# tekton-pipeline-ocp4-demo

## Docker build
<br/><br/>
I am creating a tekton pipeline to build docker image of springboot application and deploy on openshift. Please see code repository https://github.com/malam84/springboot-hello-world.git. Please execute below step to run code on your workspace

<b>1.</b> git clone git@github.com:malam84/tekton-pipeline-ocp4-demo.git 
<br/><br/>
<b>2.</b> cd tekton-pipeline-ocp4-demo/docker-build
<br/><br/>
<b>3.</b> Create a project in ocp4  $ oc new-project project-name
<br/><br/>
<b>4.</b> Please modify maven-settings.xml as per your project scope and create a configmap <br> &nbsp; &nbsp;$ oc create cm maven-settings --from-file=settings.xml=maven-settings.xml
<br/><br/>
<b>5.</b> Take a look of sonar-project.properties file and create a configmap for project setting. <br>
 &nbsp; &nbsp; $ oc create configmap sonar-properties --from-file="sonar-project.properties"
<br/><br/>
<b>6.</b> Create a secret to access quay.io image repository. <br>
   &nbsp; &nbsp;   $ oc create secret docker-registry dockerconfigjson \ <br>
    &nbsp; &nbsp;     --docker-server=quay.io \ <br>
 &nbsp; &nbsp;   --docker-username=yourid \ <br>
 &nbsp; &nbsp;   --docker-password=yourpassword \ <br>
 &nbsp; &nbsp;   --docker-email=youremail
<br/><br/>
<b>7.</b> Modify pvc as per your cluster storage setting
<b>8.</b> oc apply -f  <br/>
<b>9.</b> oc get route  <br> &nbsp; &nbsp; http://springboot-hello-world-domain.xxx.com/hello <br/>
</br></br>




