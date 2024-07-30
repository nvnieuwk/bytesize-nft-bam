process COPY {
    input:
    tuple val(meta), path(input)

    output:
    tuple val(meta), path("*.{bam,cram}"), emit: bam

    script:
    """
    cp $input copy.${input.extension}
    """
}