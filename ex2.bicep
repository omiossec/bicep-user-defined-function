func resourceName (appName string, increment int, resourceType string) string =>  toLower('${appName}-${increment}-${resourceType}')


output name string = resourceName('app',2, 'vnic')
