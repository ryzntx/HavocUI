.class public Lcom/havoc/support/preferences/SecureSettingMasterSwitchPreference;
.super Lcom/havoc/support/preferences/MasterSwitchPreference;
.source "SecureSettingMasterSwitchPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/havoc/support/preferences/MasterSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance p2, Lcom/havoc/support/preferences/SecureSettingsStore;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/havoc/support/preferences/SecureSettingsStore;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setPreferenceDataStore(Landroidx/preference/PreferenceDataStore;)V

    return-void
.end method
