WITH tmp_prop_leg_cd AS (
    SELECT
        ultimoStatus,	
        uriPropPosterior,	
        uriPropPrincipal,	
        uriPropAnterior,	
        urlInteiroTeor,	
        dataApresentacao,	
        codTipo,	
        keywords,	
        ementa,	
        ano,	
        descricaoTipo,	
        ementaDetalhada,	
        uri,	
        numero,	
        siglaTipo,	
        uriOrgaoNumerador,	
        id,	
        ultimoStatus.url,	
        ultimoStatus.apreciacao,	
        ultimoStatus.idSituacao,	
        ultimoStatus.data,	
        ultimoStatus.descricaoSituacao,	
        ultimoStatus.despacho,	
        ultimoStatus.descricaoTramitacao,	
        ultimoStatus.idTipoTramitacao,	
        ultimoStatus.uriOrgao,	
        ultimoStatus.siglaOrgao,	
        ultimoStatus.uriRelator,	
        ultimoStatus.regime,	
        ultimoStatus.sequencia,	
        ultimoStatus.codOrgao,
    
    FROM {{ source('legislativo', 'leg_cn_cd_proposicoes_2024') }}
)

SELECT * FROM tmp_prop_leg_cd