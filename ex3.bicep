func returnParam (myParam string) string  => '${myParam}'

func addPrefix (prefix string, appName string) string => concat(prefix, '-', returnParam(appName))


output name string = addPrefix('vm', 'web')
