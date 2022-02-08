.class public Lcom/havoc/support/preferences/MasterSwitchPreference;
.super Lcom/havoc/support/preferences/TwoTargetPreference;
.source "MasterSwitchPreference.java"


# instance fields
.field private mChecked:Z

.field private final mContext:Landroid/content/Context;

.field private mEnableSwitch:Z

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 58
    sget v0, Landroidx/preference/R$attr;->switchPreferenceStyle:I

    const v1, 0x101036d

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/havoc/support/preferences/MasterSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/havoc/support/preferences/MasterSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/havoc/support/preferences/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x1

    .line 42
    iput-boolean p2, p0, Lcom/havoc/support/preferences/MasterSwitchPreference;->mEnableSwitch:Z

    .line 50
    iput-object p1, p0, Lcom/havoc/support/preferences/MasterSwitchPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/havoc/support/preferences/MasterSwitchPreference;)Landroid/widget/Switch;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/havoc/support/preferences/MasterSwitchPreference;->mSwitch:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$100(Lcom/havoc/support/preferences/MasterSwitchPreference;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/havoc/support/preferences/MasterSwitchPreference;->mChecked:Z

    return p0
.end method

.method static synthetic access$200(Lcom/havoc/support/preferences/MasterSwitchPreference;)Landroid/content/Context;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/havoc/support/preferences/MasterSwitchPreference;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method protected getPersistedBoolean(Z)Z
    .locals 1

    .line 145
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 149
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 150
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    .line 149
    invoke-static {v0, p0, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected getSecondTargetResId()I
    .locals 0

    .line 69
    sget p0, Lcom/havoc/support/R$layout;->preference_widget_master_switch:I

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 74
    invoke-super {p0, p1}, Lcom/havoc/support/preferences/TwoTargetPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020018

    .line 75
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    new-instance v1, Lcom/havoc/support/preferences/MasterSwitchPreference$1;

    invoke-direct {v1, p0}, Lcom/havoc/support/preferences/MasterSwitchPreference$1;-><init>(Lcom/havoc/support/preferences/MasterSwitchPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    :cond_0
    sget v0, Lcom/havoc/support/R$id;->switchWidget:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/havoc/support/preferences/MasterSwitchPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz p1, :cond_1

    .line 96
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 97
    iget-object p1, p0, Lcom/havoc/support/preferences/MasterSwitchPreference;->mSwitch:Landroid/widget/Switch;

    iget-boolean v0, p0, Lcom/havoc/support/preferences/MasterSwitchPreference;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 98
    iget-object p1, p0, Lcom/havoc/support/preferences/MasterSwitchPreference;->mSwitch:Landroid/widget/Switch;

    iget-boolean p0, p0, Lcom/havoc/support/preferences/MasterSwitchPreference;->mEnableSwitch:Z

    invoke-virtual {p1, p0}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    .line 126
    invoke-virtual {p1, p2, p0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected persistBoolean(Z)Z
    .locals 2

    .line 131
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_1

    xor-int/lit8 v0, p1, 0x1

    .line 132
    invoke-virtual {p0, v0}, Lcom/havoc/support/preferences/MasterSwitchPreference;->getPersistedBoolean(Z)Z

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    .line 137
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/havoc/support/preferences/MasterSwitchPreference;->mChecked:Z

    .line 108
    iget-object p0, p0, Lcom/havoc/support/preferences/MasterSwitchPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz p0, :cond_0

    .line 109
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    return-void
.end method
