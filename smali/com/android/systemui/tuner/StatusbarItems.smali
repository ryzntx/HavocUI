.class public Lcom/android/systemui/tuner/StatusbarItems;
.super Landroidx/preference/PreferenceFragment;
.source "StatusbarItems.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 25
    sget p1, Lcom/android/systemui/R$xml;->statusbar_items:I

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    return-void
.end method
