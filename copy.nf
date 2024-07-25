process COPY {
    input:
    path(input)

    output:
    path("*.{bam,cram}"), emit: bam

    script:
    """
    cp $input ${input.baseName}.copy.${input.extension}
    """
}