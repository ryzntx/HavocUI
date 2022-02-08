.class public Lcom/android/systemui/statusbar/logo/LogoImageView;
.super Landroid/widget/ImageView;
.source "LogoImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/logo/LogoImageView$SettingsObserver;
    }
.end annotation


# instance fields
.field private mAttached:Z

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field protected mLogoEnabled:Z

.field protected mLogoPosition:I

.field private mLogoStyle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/logo/LogoImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/logo/LogoImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    iput-object p1, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContentResolver:Landroid/content/ContentResolver;

    .line 76
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 77
    new-instance p2, Lcom/android/systemui/statusbar/logo/LogoImageView$SettingsObserver;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/logo/LogoImageView$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/logo/LogoImageView;Landroid/os/Handler;)V

    .line 78
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/logo/LogoImageView$SettingsObserver;->observe()V

    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/logo/LogoImageView;->updateSettings()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/logo/LogoImageView;)Landroid/content/ContentResolver;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method private getLogoDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 105
    iget v0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mLogoStyle:I

    packed-switch v0, :pswitch_data_0

    .line 108
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_havoc_logo:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto/16 :goto_0

    .line 255
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_yin_yang:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto/16 :goto_0

    .line 252
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_xbox_controller:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto/16 :goto_0

    .line 249
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_xbox:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto/16 :goto_0

    .line 246
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_windows:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto/16 :goto_0

    .line 243
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_wallet:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto/16 :goto_0

    .line 240
    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_smoking:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto/16 :goto_0

    .line 237
    :pswitch_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_skull:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto/16 :goto_0

    .line 234
    :pswitch_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_robot:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto/16 :goto_0

    .line 231
    :pswitch_8
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_peace:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto/16 :goto_0

    .line 228
    :pswitch_9
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_pac_man:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto/16 :goto_0

    .line 225
    :pswitch_a
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_ninja:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto/16 :goto_0

    .line 222
    :pswitch_b
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_music:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto/16 :goto_0

    .line 219
    :pswitch_c
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_lock:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto/16 :goto_0

    .line 216
    :pswitch_d
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_linux:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto/16 :goto_0

    .line 213
    :pswitch_e
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_ios_logo:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto/16 :goto_0

    .line 210
    :pswitch_f
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_incognito:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto/16 :goto_0

    .line 207
    :pswitch_10
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_human_male_female:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto/16 :goto_0

    .line 204
    :pswitch_11
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_human_male:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto/16 :goto_0

    .line 201
    :pswitch_12
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_human_female:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto/16 :goto_0

    .line 198
    :pswitch_13
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_heart:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto/16 :goto_0

    .line 195
    :pswitch_14
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_guitar_electric:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto/16 :goto_0

    .line 192
    :pswitch_15
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_guitar_acoustic:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto/16 :goto_0

    .line 189
    :pswitch_16
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_google:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto/16 :goto_0

    .line 186
    :pswitch_17
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_ghost:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto/16 :goto_0

    .line 183
    :pswitch_18
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_gender_male_female:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto/16 :goto_0

    .line 180
    :pswitch_19
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_gender_male:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto/16 :goto_0

    .line 177
    :pswitch_1a
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_gender_female:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto/16 :goto_0

    .line 174
    :pswitch_1b
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_flask:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto/16 :goto_0

    .line 171
    :pswitch_1c
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_fire:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto/16 :goto_0

    .line 168
    :pswitch_1d
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_emoticon_tongue:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto/16 :goto_0

    .line 165
    :pswitch_1e
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_emoticon_sad:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto/16 :goto_0

    .line 162
    :pswitch_1f
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_emoticon_poop:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto/16 :goto_0

    .line 159
    :pswitch_20
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_emoticon_neutral:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto/16 :goto_0

    .line 156
    :pswitch_21
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_emoticon_happy:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto/16 :goto_0

    .line 153
    :pswitch_22
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_emoticon_devil:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto/16 :goto_0

    .line 150
    :pswitch_23
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_emoticon_dead:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto/16 :goto_0

    .line 147
    :pswitch_24
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_emoticon_cool:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto/16 :goto_0

    .line 144
    :pswitch_25
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_emoticon:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    .line 141
    :pswitch_26
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_death_star:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    .line 138
    :pswitch_27
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_cannabis:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    .line 135
    :pswitch_28
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_cake:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    .line 132
    :pswitch_29
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_brain:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    .line 129
    :pswitch_2a
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_bomb:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    .line 126
    :pswitch_2b
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_blogger:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    .line 123
    :pswitch_2c
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_blackberry:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    .line 120
    :pswitch_2d
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_biohazard:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    .line 117
    :pswitch_2e
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_beats:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    .line 114
    :pswitch_2f
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_apple_logo:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    .line 111
    :pswitch_30
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_android_logo:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .line 282
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mLogoEnabled:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mLogoPosition:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 84
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 85
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mAttached:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mAttached:Z

    .line 89
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Landroid/widget/ImageView;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/logo/LogoImageView;->updateSettings()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 95
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 96
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mAttached:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mAttached:Z

    .line 100
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Landroid/widget/ImageView;)V

    return-void
.end method

.method public updateSettings()V
    .locals 3

    .line 262
    iget-object v0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "status_bar_logo"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mLogoEnabled:Z

    .line 264
    iget-object v0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "status_bar_logo_position"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mLogoPosition:I

    .line 266
    iget-object v0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "status_bar_logo_style"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView;->mLogoStyle:I

    .line 268
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/logo/LogoImageView;->updateVisibility()V

    return-void
.end method

.method public updateVisibility()V
    .locals 1

    .line 272
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/logo/LogoImageView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 273
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 274
    invoke-direct {p0}, Lcom/android/systemui/statusbar/logo/LogoImageView;->getLogoDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 276
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x8

    .line 277
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
