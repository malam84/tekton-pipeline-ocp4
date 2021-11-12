# tekton-pipeline-ocp4-demo

## tekton-buildah-demo
<br/>
<b>1.</b> git clone git@github.com:malam84/tekton-pipeline-ocp4-demo.git 
<br/><br/>
<b>2.</b> cd tekton-pipeline-ocp4-demo
<br/><br/>
<b>3.</b> Create a project in ocp4 using, $ oc new-project tekton-buildah-hello-demo
<br/><br/>
<b>4.</b> Please set your artifact repository path inside maven-settings.xml, vi maven-settings.xml
<br/><br/>
<b>5.</b> oc create -n tekton-buildah-hello-demo cm maven-settings --from-file=settings.xml=/tekton-buildah-demo/maven-settings.xml
<br/><br/>
<b>6.</b> oc apply -f /tekton-buildah-demo
<br/><br/>
<b>7.</b> oc get route 
</br></br>

<img width="1048" alt="pipeline" src="https://user-images.githubusercontent.com/42507151/141457638-fc0c91ce-3f3b-4921-979e-5f4674355f3b.png">


