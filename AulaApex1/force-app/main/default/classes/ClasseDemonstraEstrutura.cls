public with sharing class ClasseDemonstraEstrutura {

    public static Boolean nomeDoMetodo() {
        Boolean primeiraVariavelBooleana = true;
        String exemploString = 'texto';
        Decimal decimalDeExemplo = 50.01;
        Double doubleExemplo = 50.000001;

        //Exemplo lista de String: Permite lançar dado repetido.
        List<String> listaDeExemploList = new List<String>();
        listaDeExemploList.add('Informação 1');
        listaDeExemploList.add('Informação 1');
        listaDeExemploList.add('Informação 3');
        System.debug('listaDeExemploList' +listaDeExemploList);

        //Exemplo lista de inteiro:
        List<Integer> listaExInteger = new List<Integer>();
        listaExInteger.add(1);
        listaExInteger.add(2);
        listaExInteger.add(3);
        System.debug('listaExInteger' +listaExInteger);

        //Exemplo de lista já inciando com informações quando declara:
        List<String> listaDeExemploList2 = new List<String>{'Informação 1', 'Informação 2', 'Informação 3'};
        System.debug('listaDeExemploList2' +listaDeExemploList2);

        //Exemplo de lista de objetos:
        List<Opportunity> OpportunityList = new List<Opportunity>([SELECT Id, Name FROM Opportunity]);
        System.debug('OpportunityList' +OpportunityList);

        //Exemplo lista de Set: Não aceita repetir informações, então vai imprimir só uma vez o que se repete.
        Set<String> listaDeExemploSet = new Set<String>();
        listaDeExemploSet.add('Informação 1');
        listaDeExemploSet.add('Informação 1');
        System.debug('listaDeExemploSet' +listaDeExemploSet);

        //Podemos declarar variável de tipo de objeto:
        Account accountVariable;

        Integer count = 1;
        //duas formas de fazer o for:
        //forma 1: aqui está pecorrendo o objeto.
        for(Opportunity o : OpportunityList){
            System.debug('Nome da oportunidade' +count+ ' : ' +o.Name);
            count++;
        }

        //forma 2: aqui está pecorrendo a lista.
        for(Integer count1 = 0; count1 < OpportunityList.size(); count1++ ){
            System.debug('Nome da oportunidade' +count1+ ' no FOR 2: ' +OpportunityList[count1].Name);
        }

        //While ver porque não funcionou depois
        String nameOpportunity;
        while(nameOpportunity == null){
            count = 1;
            for(Opportunity o : OpportunityList){
                nameOpportunity = o.Name;
                System.debug('Nome da oportunidade no while ' +count+ ' : ' +o.Name);
                count++;
            }    
        }

        return primeiraVariavelBooleana;
    }

    //Estrutura de controle:
    public static Boolean metodoEstruturaControle1(Integer paramInt1) {
        Boolean retBoolean = false;

        if(paramInt1 > 10 && paramInt1 != 19){
            retBoolean = true;
        }else if(paramInt1 == 19){
            retBoolean = false;
        }else {
            retBoolean = false;
        }

        System.debug('retBoolean '+  paramInt1);

        return retBoolean;
    }        

    //construir um método que receba dois parâmetros do tipo inteiro e retorne a soma destes dois parâmetros.
    //se o param 1 for maior que do que 5, deve somar mais dois neste resultado.
    public static Integer soma(Integer numeroUm, Integer numeroDois){
        Integer result = numeroUm + numeroDois;

        if( numeroUm > 5){
            result = result + 2;
            return result;
        }else{
            return result;
        }

        //System.debug('Resultado: '+result);
    }
}

