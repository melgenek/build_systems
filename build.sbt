import sbt.Keys._
import sbtassembly.AssemblyPlugin.autoImport._

lazy val commonSettings = Seq(
  libraryDependencies += "junit" % "junit" % "4.12" % "test",
  autoScalaLibrary := false
)

lazy val artifacts: File = root.base / "artifacts"
lazy val root = project.in(file("."))
  .aggregate(utils, services, admin, web)
  .settings(
    clean <<= clean map { nothing =>
      IO.delete(artifacts)
    }
  )

lazy val utils = project.in(file("utils"))
  .settings(commonSettings: _*)

lazy val services = project.in(file("services"))
  .settings(commonSettings: _*)
  .dependsOn(utils)

lazy val admin = project.in(file("admin"))
  .settings(commonSettings: _*)
  .settings(
    assemblyJarName in assembly := "admin.jar",
    assemblyOutputPath in assembly := artifacts / "admin.jar",
    assemblyOption in assembly := (assemblyOption in assembly).value.copy(includeScala = false)
  )
  .settings(
    sbt.Keys.`package` <<= (sbt.Keys.`package` in Compile) dependsOn assembly,
    assembly <<= assembly dependsOn (compile in Compile)
  )
  .dependsOn(services)

lazy val web = project.in(file("web"))
  .settings(commonSettings: _*)
  .settings(libraryDependencies += "javax.servlet" % "servlet-api" % "2.5" % "provided")
  .enablePlugins(WarPlugin)
  .settings(
    webappWebInfClasses := true,
    artifactPath in sbt.Keys.`package` := artifacts / "web.war"
  )
  .dependsOn(services)


