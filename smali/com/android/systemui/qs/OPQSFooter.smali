.class public Lcom/android/systemui/qs/OPQSFooter;
.super Landroid/widget/LinearLayout;
.source "OPQSFooter.java"


# instance fields
.field private mBrightnessButton:Landroid/widget/ImageView;

.field private mBrightnessView:Landroid/view/View;

.field private mCarrierText:Lcom/android/keyguard/CarrierText;

.field protected mCarrierTextAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mContext:Landroid/content/Context;

.field private mDataUsageView:Lcom/android/systemui/statusbar/DataUsageView;

.field protected mEdit:Landroid/view/View;

.field private mExpanded:Ljava/lang/Boolean;

.field private mFooterActions:Landroid/widget/FrameLayout;

.field protected mFooterAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mIsLandscape:Ljava/lang/Boolean;

.field private mIsQQSPanel:Z

.field private mMediaSpacer:Landroid/widget/LinearLayout;

.field private mRunningServicesButton:Landroid/view/View;

.field private mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

.field private mSettingsContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/android/systemui/qs/OPQSFooter;->mIsLandscape:Ljava/lang/Boolean;

    const/4 p2, 0x0

    .line 72
    iput-boolean p2, p0, Lcom/android/systemui/qs/OPQSFooter;->mIsQQSPanel:Z

    .line 76
    iput-object p1, p0, Lcom/android/systemui/qs/OPQSFooter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/OPQSFooter;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/qs/OPQSFooter;->startDataUsageActivity()V

    return-void
.end method

.method private createCarrierTextAnimator()Lcom/android/systemui/qs/TouchAnimator;
    .locals 5

    .line 172
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/OPQSFooter;->mDataUsageView:Lcom/android/systemui/statusbar/DataUsageView;

    const/4 v2, 0x3

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "alpha"

    .line 173
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 174
    iget-object v1, p0, Lcom/android/systemui/qs/OPQSFooter;->mIsLandscape:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    iget-object p0, p0, Lcom/android/systemui/qs/OPQSFooter;->mCarrierText:Lcom/android/keyguard/CarrierText;

    new-array v1, v2, [F

    fill-array-data v1, :array_1

    invoke-virtual {v0, p0, v4, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    const/high16 p0, 0x3f000000    # 0.5f

    .line 176
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    goto :goto_0

    .line 178
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/OPQSFooter;->mCarrierText:Lcom/android/keyguard/CarrierText;

    new-array v1, v2, [F

    fill-array-data v1, :array_2

    invoke-virtual {v0, p0, v4, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 180
    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data
.end method

.method private createFooterAnimator()Lcom/android/systemui/qs/TouchAnimator;
    .locals 5

    .line 157
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/OPQSFooter;->mBrightnessButton:Landroid/widget/ImageView;

    const/4 v2, 0x3

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "alpha"

    .line 158
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    iget-object v1, p0, Lcom/android/systemui/qs/OPQSFooter;->mRunningServicesButton:Landroid/view/View;

    new-array v3, v2, [F

    fill-array-data v3, :array_1

    .line 159
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    iget-object v1, p0, Lcom/android/systemui/qs/OPQSFooter;->mEdit:Landroid/view/View;

    new-array v3, v2, [F

    fill-array-data v3, :array_2

    .line 160
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 161
    iget-object v1, p0, Lcom/android/systemui/qs/OPQSFooter;->mIsLandscape:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/android/systemui/qs/OPQSFooter;->mBrightnessView:Landroid/view/View;

    new-array v3, v2, [F

    fill-array-data v3, :array_3

    invoke-virtual {v0, v1, v4, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    const/high16 v1, 0x3f000000    # 0.5f

    .line 163
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 164
    iget-object p0, p0, Lcom/android/systemui/qs/OPQSFooter;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    new-array v2, v2, [F

    fill-array-data v2, :array_4

    invoke-virtual {v0, p0, v4, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 165
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 167
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setOrientation(Z)V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/android/systemui/qs/OPQSFooter;->mIsLandscape:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 216
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/OPQSFooter;->mIsLandscape:Ljava/lang/Boolean;

    .line 217
    iget-object p1, p0, Lcom/android/systemui/qs/OPQSFooter;->mBrightnessView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 218
    iget-object p1, p0, Lcom/android/systemui/qs/OPQSFooter;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 219
    invoke-direct {p0}, Lcom/android/systemui/qs/OPQSFooter;->createFooterAnimator()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/OPQSFooter;->mFooterAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 220
    invoke-direct {p0}, Lcom/android/systemui/qs/OPQSFooter;->createCarrierTextAnimator()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/OPQSFooter;->mCarrierTextAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 222
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/OPQSFooter;->mIsLandscape:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/qs/OPQSFooter;->mIsQQSPanel:Z

    if-eqz p1, :cond_1

    .line 223
    iget-object p1, p0, Lcom/android/systemui/qs/OPQSFooter;->mMediaSpacer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 224
    iget-object p1, p0, Lcom/android/systemui/qs/OPQSFooter;->mBrightnessView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 225
    iget-object p0, p0, Lcom/android/systemui/qs/OPQSFooter;->mFooterActions:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 227
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/OPQSFooter;->mMediaSpacer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 228
    iget-object p1, p0, Lcom/android/systemui/qs/OPQSFooter;->mBrightnessView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 229
    iget-object p0, p0, Lcom/android/systemui/qs/OPQSFooter;->mFooterActions:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private startDataUsageActivity()V
    .locals 2

    .line 257
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$DataUsageSummaryActivity"

    .line 258
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method


# virtual methods
.method public getBrightnessButton()Landroid/widget/ImageView;
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/android/systemui/qs/OPQSFooter;->mBrightnessButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getEditButton()Landroid/view/View;
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/android/systemui/qs/OPQSFooter;->mEdit:Landroid/view/View;

    return-object p0
.end method

.method public getServicesButton()Landroid/view/View;
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/android/systemui/qs/OPQSFooter;->mRunningServicesButton:Landroid/view/View;

    return-object p0
.end method

.method public getSettingsButton()Landroid/view/View;
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/android/systemui/qs/OPQSFooter;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    return-object p0
.end method

.method public getSettingsContainer()Landroid/view/View;
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/android/systemui/qs/OPQSFooter;->mSettingsContainer:Landroid/view/View;

    return-object p0
.end method

.method public isBrightnessEnabled()Z
    .locals 2

    .line 239
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/OPQSFooter;->mContext:Landroid/content/Context;

    .line 241
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "qs_footer_show_brightness_icon"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isEditEnabled()Z
    .locals 2

    .line 252
    iget-object p0, p0, Lcom/android/systemui/qs/OPQSFooter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "qs_footer_show_edit"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isServicesEnabled()Z
    .locals 2

    .line 247
    iget-object p0, p0, Lcom/android/systemui/qs/OPQSFooter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "qs_footer_show_services"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public isSettingsEnabled()Z
    .locals 2

    .line 234
    iget-object p0, p0, Lcom/android/systemui/qs/OPQSFooter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "qs_footer_show_settings"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 209
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 210
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/OPQSFooter;->setOrientation(Z)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 81
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 83
    sget v0, Lcom/android/systemui/R$id;->brightness_view:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/OPQSFooter;->mBrightnessView:Landroid/view/View;

    .line 84
    sget v0, Lcom/android/systemui/R$id;->auto_brightness_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/OPQSFooter;->mBrightnessButton:Landroid/widget/ImageView;

    .line 85
    sget v0, Lcom/android/systemui/R$id;->qs_footer_media_spacer:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/OPQSFooter;->mMediaSpacer:Landroid/widget/LinearLayout;

    .line 86
    sget v0, Lcom/android/systemui/R$id;->edit:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/OPQSFooter;->mEdit:Landroid/view/View;

    .line 87
    sget v0, Lcom/android/systemui/R$id;->running_services_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/OPQSFooter;->mRunningServicesButton:Landroid/view/View;

    .line 88
    sget v0, Lcom/android/systemui/R$id;->settings_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/SettingsButton;

    iput-object v0, p0, Lcom/android/systemui/qs/OPQSFooter;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    .line 89
    sget v0, Lcom/android/systemui/R$id;->settings_button_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/OPQSFooter;->mSettingsContainer:Landroid/view/View;

    .line 90
    sget v0, Lcom/android/systemui/R$id;->op_qs_footer_actions:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/OPQSFooter;->mFooterActions:Landroid/widget/FrameLayout;

    .line 91
    sget v0, Lcom/android/systemui/R$id;->qs_carrier_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/CarrierText;

    iput-object v0, p0, Lcom/android/systemui/qs/OPQSFooter;->mCarrierText:Lcom/android/keyguard/CarrierText;

    .line 92
    sget v0, Lcom/android/systemui/R$id;->data_usage_view:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/DataUsageView;

    iput-object v0, p0, Lcom/android/systemui/qs/OPQSFooter;->mDataUsageView:Lcom/android/systemui/statusbar/DataUsageView;

    const/16 v1, 0x8

    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/OPQSFooter;->mIsLandscape:Ljava/lang/Boolean;

    .line 96
    invoke-direct {p0}, Lcom/android/systemui/qs/OPQSFooter;->createFooterAnimator()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/OPQSFooter;->mFooterAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 97
    invoke-direct {p0}, Lcom/android/systemui/qs/OPQSFooter;->createCarrierTextAnimator()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/OPQSFooter;->mCarrierTextAnimator:Lcom/android/systemui/qs/TouchAnimator;

    return-void
.end method

.method public setExpanded(Z)V
    .locals 3

    .line 110
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/OPQSFooter;->mExpanded:Ljava/lang/Boolean;

    .line 111
    iget-object v0, p0, Lcom/android/systemui/qs/OPQSFooter;->mDataUsageView:Lcom/android/systemui/statusbar/DataUsageView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object p1, p0, Lcom/android/systemui/qs/OPQSFooter;->mExpanded:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 114
    iget-object p1, p0, Lcom/android/systemui/qs/OPQSFooter;->mDataUsageView:Lcom/android/systemui/statusbar/DataUsageView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/DataUsageView;->updateUsage()V

    .line 115
    iget-object p1, p0, Lcom/android/systemui/qs/OPQSFooter;->mDataUsageView:Lcom/android/systemui/statusbar/DataUsageView;

    new-instance v0, Lcom/android/systemui/qs/OPQSFooter$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/OPQSFooter$1;-><init>(Lcom/android/systemui/qs/OPQSFooter;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/OPQSFooter;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    if-eqz p1, :cond_3

    .line 123
    invoke-virtual {p0}, Lcom/android/systemui/qs/OPQSFooter;->isSettingsEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    move p1, v2

    .line 124
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/OPQSFooter;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 126
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/qs/OPQSFooter;->mSettingsContainer:Landroid/view/View;

    if-eqz p1, :cond_5

    .line 127
    invoke-virtual {p0}, Lcom/android/systemui/qs/OPQSFooter;->isSettingsEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v1

    goto :goto_2

    :cond_4
    move p1, v2

    .line 128
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/qs/OPQSFooter;->mSettingsContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/qs/OPQSFooter;->mBrightnessButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_7

    .line 131
    iget-object p1, p0, Lcom/android/systemui/qs/OPQSFooter;->mExpanded:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/qs/OPQSFooter;->isBrightnessEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    move p1, v1

    goto :goto_3

    :cond_6
    move p1, v2

    .line 132
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/qs/OPQSFooter;->mBrightnessButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/qs/OPQSFooter;->mEdit:Landroid/view/View;

    if-eqz p1, :cond_9

    .line 135
    iget-object p1, p0, Lcom/android/systemui/qs/OPQSFooter;->mExpanded:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/qs/OPQSFooter;->isEditEnabled()Z

    move-result p1

    if-eqz p1, :cond_8

    move p1, v1

    goto :goto_4

    :cond_8
    move p1, v2

    .line 136
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/qs/OPQSFooter;->mEdit:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 138
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/qs/OPQSFooter;->mRunningServicesButton:Landroid/view/View;

    if-eqz p1, :cond_b

    .line 139
    iget-object p1, p0, Lcom/android/systemui/qs/OPQSFooter;->mExpanded:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/android/systemui/qs/OPQSFooter;->isServicesEnabled()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_5

    :cond_a
    move v1, v2

    .line 140
    :goto_5
    iget-object p1, p0, Lcom/android/systemui/qs/OPQSFooter;->mRunningServicesButton:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    :cond_b
    iget-object p1, p0, Lcom/android/systemui/qs/OPQSFooter;->mExpanded:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/qs/OPQSFooter;->mIsQQSPanel:Z

    .line 143
    iget-object p1, p0, Lcom/android/systemui/qs/OPQSFooter;->mIsLandscape:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/OPQSFooter;->setOrientation(Z)V

    return-void
.end method

.method public setExpansion(F)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/systemui/qs/OPQSFooter;->mFooterAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 104
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/OPQSFooter;->mCarrierTextAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p0, :cond_1

    .line 105
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_1
    return-void
.end method

.method public setIsQQSPanel()V
    .locals 2

    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lcom/android/systemui/qs/OPQSFooter;->mIsQQSPanel:Z

    .line 148
    iget-object v0, p0, Lcom/android/systemui/qs/OPQSFooter;->mBrightnessButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/android/systemui/qs/OPQSFooter;->mRunningServicesButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/android/systemui/qs/OPQSFooter;->mEdit:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/android/systemui/qs/OPQSFooter;->mDataUsageView:Lcom/android/systemui/statusbar/DataUsageView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/android/systemui/qs/OPQSFooter;->mIsLandscape:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/OPQSFooter;->setOrientation(Z)V

    return-void
.end method
