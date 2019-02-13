({
    getBMI : function(component, event, helper) {

        console.log('getting getBMIMethod');
        var getBMIMethod = component.get('c.getBMI');
        console.log('setting the callback');
        getBMIMethod.setCallback(this, function(response){
            console.log('getting the response');
            if(response.getState() === 'SUCCESS') {
                console.log('setting the response: ');
                console.log(response.getReturnValue());
                component.set("v.lstBMI", response.getReturnValue());
            }
        });
        console.log('enqueueAction getBMIMethod');
        $A.enqueueAction(getBMIMethod);
    }
})