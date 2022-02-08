.class public Lcom/havoc/support/preferences/SystemPropListPreference;
.super Lcom/havoc/support/preferences/ListPreference;
.source "SystemPropListPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/havoc/support/preferences/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance p1, Lcom/havoc/support/preferences/SystemPropStore;

    invoke-direct {p1}, Lcom/havoc/support/preferences/SystemPropStore;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setPreferenceDataStore(Landroidx/preference/PreferenceDataStore;)V

    return-void
.end method


# virtual methods
.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 46
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    check-cast p1, Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/havoc/support/preferences/ListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method
