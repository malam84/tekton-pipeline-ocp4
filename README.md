# tekton-pipeline-ocp4-demo

## Docker build
<br/>
I am creating a tekton pipeline to build docker image of springboot application and deploy on openshift. Please see code repository https://github.com/malam84/springboot-hello-world.git. Please execute below step to run code on your workspace
<br/><br/>
<b>1.</b> git clone git@github.com:malam84/tekton-pipeline-ocp4.git 
<br/><br/>
<b>2.</b> cd tekton-pipeline-ocp4/docker-build
<br/><br/>
<b>3.</b> $ oc new-project project-name
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
<b>7.</b> Modify pvc.yaml as per your cluster storage setting <br/>
<b>8.</b> oc apply -f . <br/>
<b>9.</b> oc apply -f ./triggers <br/>
<b>10.</b> oc get route  <br> 
<b>11.</b> Modify trigger.sh before run <br> 
</br></br>
<img width="838" alt="trigger" src="https://user-images.githubusercontent.com/42507151/142744759-b1fea52f-280e-49c0-b44f-0fe49adaac39.png">
<img width="905" alt="pipeline" src="https://user-images.githubusercontent.com/42507151/142662058-dd140269-44a3-4b7e-a6c0-e252ee440688.png">

<img width="1084" alt="sonarqube" src="https://user-images.githubusercontent.com/42507151/142661981-a38f8dae-862c-4734-9ca1-bef1d7ac8299.png">

<img width="1430" alt="quay" src="https://user-images.githubusercontent.com/42507151/142662480-81fa0917-34f9-4046-938f-b7736929690e.png">

<br><br/>
## S2I build

### I am using springboot application https://github.com/malam84/springboot-hello-world2 for s2i build <br/>
<b>1.</b> git clone git@github.com:malam84/tekton-pipeline-ocp4.git 
<br/><br/>
<b>2.</b> cd tekton-pipeline-ocp4/s2i-build
<br/><br/>
<b>3.</b> $ oc new-project project-name
<br/><br/>
<b>4.</b> $ oc create cm maven-settings --from-file=settings.xml=maven-settings.xml
<br/><br/>
<b>5.</b> $ oc create configmap sonar-properties --from-file="sonar-project.properties"
<br/><br/>
<b>6.</b> $ oc create secret docker-registry dockerconfigjson \ <br>
    &nbsp; &nbsp;     --docker-server=quay.io \ <br>
 &nbsp; &nbsp;   --docker-username=yourid \ <br>
 &nbsp; &nbsp;   --docker-password=yourpassword \ <br>
 &nbsp; &nbsp;   --docker-email=youremail
<br/><br/>
<b>7.</b> Modify pvc.yaml as per your cluster storage setting <br/><br/>
<b>8.</b> oc apply -f .  <br/><br/>
<b>9.</b> Please restart pipelinerun if fail <br/>
<img width="967" alt="pipeline1" src="https://user-images.githubusercontent.com/42507151/142724044-802f1444-90fd-4d40-a4ab-182aa15fa337.png">
<img width="1440" alt="quay1" src="https://user-images.githubusercontent.com/42507151/142724036-2eabaa70-267b-4696-ac0d-38faa2cead1f.png">

