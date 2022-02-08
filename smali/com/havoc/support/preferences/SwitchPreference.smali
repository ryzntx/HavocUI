.class public Lcom/havoc/support/preferences/SwitchPreference;
.super Landroidx/preference/SwitchPreference;
.source "SwitchPreference.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/havoc/support/preferences/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    sget p1, Landroidx/preference/R$layout;->preference_material_settings:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 45
    sget v0, Landroidx/preference/R$attr;->switchPreferenceStyle:I

    const v1, 0x101036d

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/havoc/support/preferences/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    sget p1, Landroidx/preference/R$layout;->preference_material_settings:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/havoc/support/preferences/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    iput-object p1, p0, Lcom/havoc/support/preferences/SwitchPreference;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected performClick(Landroid/view/View;)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreference;->performClick(Landroid/view/View;)V

    .line 59
    iget-object p0, p0, Lcom/havoc/support/preferences/SwitchPreference;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/havoc/support/util/VibrationUtils;->doHapticFeedback(Landroid/content/Context;I)V

    return-void
.end method
