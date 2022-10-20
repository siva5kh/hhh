# Generated by Django 2.2.4 on 2019-09-12 14:50

from django.db import migrations, models

from awx.main.models import CredentialType
from awx.main.utils.common import set_current_apps


def setup_tower_managed_defaults(apps, schema_editor):
    set_current_apps(apps)
    CredentialType.setup_tower_managed_defaults()


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0092_v360_webhook_mixin'),
    ]

    operations = [
        migrations.AlterField(
            model_name='credentialtype',
            name='kind',
            field=models.CharField(choices=[('ssh', 'Machine'), ('vault', 'Vault'), ('net', 'Network'), ('scm', 'Source Control'), ('cloud', 'Cloud'), ('token', 'Personal Access Token'), ('insights', 'Insights'), ('external', 'External')], max_length=32),
        ),
        migrations.RunPython(setup_tower_managed_defaults),
    ]
