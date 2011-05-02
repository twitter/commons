<?xml version="1.0"?>

<!--
=================================================================================================
Copyright 2011 Twitter, Inc.
-------------------------------------------------------------------------------------------------
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this work except in compliance with the License.
You may obtain a copy of the License in the LICENSE file, or at:

 http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
=================================================================================================
-->

<!-- generated by pants! -->
<project name="${lib.id}" default="test" basedir=".">
  <import file="${root_dir}/build-support/ant/init.xml"/>

  <fileset id="${lib.id}.tests" dir="${"${"}scala.test.dir}">
  % for path in lib.sources:
    <include name="${path}"/>
  % endfor
  </fileset>

  % if lib.sources:
  <property name="${lib.id}.scala.tests">
    % for path in lib.sources:
    ${path}
    % endfor
  </property>
  % endif

  <property name="compile.name" value="${lib.id}"/>
  <property name="ivy.module" value="${lib.module}"/>

  <import file="${"${"}ant.dir}/module.xml"/>

  <target name="push">
    <fail>Only scala_library modules can have their artifacts pushed</fail>
  </target>
</project>
