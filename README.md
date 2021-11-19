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
<b>7.</b> Modify pvc as per your cluster storage setting <br/>
<b>8.</b> oc apply -f  <br/>
<b>9.</b> oc get route  <br> &nbsp; &nbsp; http://springboot-hello-world-domain.xxx.com/hello <br/>
</br></br>
<img width="905" alt="pipeline" src="https://user-images.githubusercontent.com/42507151/142662058-dd140269-44a3-4b7e-a6c0-e252ee440688.png">

<img width="1084" alt="sonarqube" src="https://user-images.githubusercontent.com/42507151/142661981-a38f8dae-862c-4734-9ca1-bef1d7ac8299.png">

<img width="1430" alt="quay" src="https://user-images.githubusercontent.com/42507151/142662480-81fa0917-34f9-4046-938f-b7736929690e.png">



