.class public Lcom/havoc/support/preferences/SystemSettingColorBlendPreference;
.super Lcom/havoc/support/preferences/ColorBlendPreference;
.source "SystemSettingColorBlendPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/havoc/support/preferences/ColorBlendPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance p2, Lcom/havoc/support/preferences/SystemSettingsStore;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/havoc/support/preferences/SystemSettingsStore;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {p0, p2}, Lcom/havoc/support/preferences/ColorBlendPreference;->setPreferenceDataStore(Landroidx/preference/PreferenceDataStore;)V

    return-void
.end method
