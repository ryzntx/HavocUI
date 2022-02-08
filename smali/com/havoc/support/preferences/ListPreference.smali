.class public Lcom/havoc/support/preferences/ListPreference;
.super Landroidx/preference/ListPreference;
.source "ListPreference.java"


# instance fields
.field private mAutoSummary:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/havoc/support/preferences/ListPreference;->mAutoSummary:Z

    return-void
.end method

.method private setSummary(Ljava/lang/CharSequence;Z)V
    .locals 0

    .line 52
    iput-boolean p2, p0, Lcom/havoc/support/preferences/ListPreference;->mAutoSummary:Z

    .line 53
    invoke-super {p0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/havoc/support/preferences/ListPreference;->setSummary(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    .line 40
    invoke-super {p0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 41
    iget-boolean p1, p0, Lcom/havoc/support/preferences/ListPreference;->mAutoSummary:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 42
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/havoc/support/preferences/ListPreference;->setSummary(Ljava/lang/CharSequence;Z)V

    :cond_1
    return-void
.end method
