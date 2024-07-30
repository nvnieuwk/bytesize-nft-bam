process COPY {
    input:
    tuple val(meta), path(input)

    output:
    tuple val(meta), path("*.${input.extension}"), emit: copy

    script:
    """
    cp $input copy.${input.extension}
    """
}