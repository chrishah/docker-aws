# docker-aws
aws cli in ubuntu

Use for example like so (you'll need an aws configuration file):
```bash
docker run --rm -e AWS_CONFIG_FILE=/in/aws_configuration -v $(pwd)/:/in -w /in aws chrishah/aws s3 ls s3://your/target/dir
```

With Singularity, for example:
```bash
SINGULARITYENV_AWS_CONFIG_FILE=~/aws_configuration singularity exec docker://chrishah/aws aws s3 cp --recursive s3://your/target/dir .
```
