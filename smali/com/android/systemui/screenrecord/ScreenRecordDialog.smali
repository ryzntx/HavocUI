.class public Lcom/android/systemui/screenrecord/ScreenRecordDialog;
.super Landroid/app/Activity;
.source "ScreenRecordDialog.java"


# instance fields
.field private mAudioSwitch:Landroid/widget/Switch;

.field private final mController:Lcom/android/systemui/screenrecord/RecordingController;

.field private final mCurrentUserContextTracker:Lcom/android/systemui/settings/CurrentUserContextTracker;

.field private mLongerSwitch:Landroid/widget/Switch;

.field private mLowQualitySwitch:Landroid/widget/Switch;

.field private mModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;",
            ">;"
        }
    .end annotation
.end field

.field private mOptions:Landroid/widget/Spinner;

.field private mStopDotSwitch:Landroid/widget/Switch;

.field private mTapsSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenrecord/RecordingController;Lcom/android/systemui/settings/CurrentUserContextTracker;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    .line 75
    iput-object p2, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mCurrentUserContextTracker:Lcom/android/systemui/settings/CurrentUserContextTracker;

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 0

    .line 94
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->requestScreenCapture()V

    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$onCreate$2(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mAudioSwitch:Landroid/widget/Switch;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method private loadPrefs()V
    .locals 5

    .line 161
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mCurrentUserContextTracker:Lcom/android/systemui/settings/CurrentUserContextTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserContextTracker;->getCurrentUserContext()Landroid/content/Context;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mTapsSwitch:Landroid/widget/Switch;

    const-string v2, "screenrecord_show_taps"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 163
    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mStopDotSwitch:Landroid/widget/Switch;

    const-string v2, "screenrecord_show_dot"

    invoke-static {v0, v2, v3}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 164
    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mLowQualitySwitch:Landroid/widget/Switch;

    const-string v2, "screenrecord_use_low_quality"

    invoke-static {v0, v2, v3}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_2

    move v2, v4

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 165
    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mLongerSwitch:Landroid/widget/Switch;

    const-string v2, "screenrecord_use_longer_timeout"

    invoke-static {v0, v2, v3}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_3

    move v2, v4

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 166
    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mAudioSwitch:Landroid/widget/Switch;

    const-string v2, "screenrecord_use_audio"

    invoke-static {v0, v2, v3}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_4

    goto :goto_4

    :cond_4
    move v4, v3

    :goto_4
    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 167
    iget-object p0, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mOptions:Landroid/widget/Spinner;

    const-string v1, "screenrecord_audio_source"

    invoke-static {v0, v1, v3}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method private requestScreenCapture()V
    .locals 11

    .line 127
    invoke-direct {p0}, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->savePrefs()V

    .line 128
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mCurrentUserContextTracker:Lcom/android/systemui/settings/CurrentUserContextTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserContextTracker;->getCurrentUserContext()Landroid/content/Context;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mTapsSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v4

    .line 130
    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mStopDotSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v5

    .line 131
    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mLowQualitySwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v6

    .line 132
    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mLongerSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v7

    .line 133
    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mAudioSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mOptions:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    goto :goto_0

    .line 135
    :cond_0
    sget-object v1, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->NONE:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    :goto_0
    const/4 v2, -0x1

    .line 140
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    move-object v1, v0

    .line 138
    invoke-static/range {v1 .. v7}, Lcom/android/systemui/screenrecord/RecordingService;->getStartIntent(Landroid/content/Context;IIZZZZ)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x2

    const/high16 v3, 0xc000000

    .line 136
    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getForegroundService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 145
    invoke-static {v0}, Lcom/android/systemui/screenrecord/RecordingService;->getStopIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 143
    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 147
    iget-object v4, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    const-wide/16 v5, 0xbb8

    const-wide/16 v7, 0x3e8

    invoke-virtual/range {v4 .. v10}, Lcom/android/systemui/screenrecord/RecordingController;->startCountdown(JJLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void
.end method

.method private savePrefs()V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mCurrentUserContextTracker:Lcom/android/systemui/settings/CurrentUserContextTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserContextTracker;->getCurrentUserContext()Landroid/content/Context;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mTapsSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    const-string v2, "screenrecord_show_taps"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 153
    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mStopDotSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    const-string v2, "screenrecord_show_dot"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 154
    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mLowQualitySwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    const-string v2, "screenrecord_use_low_quality"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 155
    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mLongerSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    const-string v2, "screenrecord_use_longer_timeout"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 156
    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mAudioSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    const-string v2, "screenrecord_use_audio"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 157
    iget-object p0, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mOptions:Landroid/widget/Spinner;

    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p0

    const-string v1, "screenrecord_audio_source"

    invoke-static {v0, v1, p0}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$ScreenRecordDialog(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onCreate$1$ScreenRecordDialog(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->lambda$onCreate$1(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onCreate$2$ScreenRecordDialog(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->lambda$onCreate$2(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 85
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    const/16 v0, 0x10

    .line 86
    invoke-virtual {p1, v0}, Landroid/view/Window;->addPrivateFlags(I)V

    const/16 v0, 0x50

    .line 87
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 88
    sget p1, Lcom/android/systemui/R$string;->screenrecord_name:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    .line 90
    sget p1, Lcom/android/systemui/R$layout;->screen_record_dialog:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 92
    sget p1, Lcom/android/systemui/R$id;->button_cancel:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 93
    new-instance v0, Lcom/android/systemui/screenrecord/-$$Lambda$ScreenRecordDialog$UwuybAZfzEbq-KArO9WeoPnEStk;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenrecord/-$$Lambda$ScreenRecordDialog$UwuybAZfzEbq-KArO9WeoPnEStk;-><init>(Lcom/android/systemui/screenrecord/ScreenRecordDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    sget p1, Lcom/android/systemui/R$id;->button_start:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 98
    new-instance v0, Lcom/android/systemui/screenrecord/-$$Lambda$ScreenRecordDialog$PtlgQ6bdLH8Q6JnpPzk4xxbDTtg;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenrecord/-$$Lambda$ScreenRecordDialog$PtlgQ6bdLH8Q6JnpPzk4xxbDTtg;-><init>(Lcom/android/systemui/screenrecord/ScreenRecordDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mModes:Ljava/util/List;

    .line 104
    sget-object v0, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->MIC:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mModes:Ljava/util/List;

    sget-object v0, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mModes:Ljava/util/List;

    sget-object v0, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->MIC_AND_INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    sget p1, Lcom/android/systemui/R$id;->screenrecord_audio_switch:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mAudioSwitch:Landroid/widget/Switch;

    .line 109
    sget p1, Lcom/android/systemui/R$id;->screenrecord_taps_switch:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mTapsSwitch:Landroid/widget/Switch;

    .line 110
    sget p1, Lcom/android/systemui/R$id;->screenrecord_stopdot_switch:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mStopDotSwitch:Landroid/widget/Switch;

    .line 111
    sget p1, Lcom/android/systemui/R$id;->screenrecord_lowquality_switch:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mLowQualitySwitch:Landroid/widget/Switch;

    .line 112
    sget p1, Lcom/android/systemui/R$id;->screenrecord_longer_timeout_switch:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mLongerSwitch:Landroid/widget/Switch;

    .line 113
    sget p1, Lcom/android/systemui/R$id;->screen_recording_options:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mOptions:Landroid/widget/Spinner;

    .line 114
    new-instance p1, Lcom/android/systemui/screenrecord/ScreenRecordingAdapter;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mModes:Ljava/util/List;

    const v2, 0x1090009

    invoke-direct {p1, v0, v2, v1}, Lcom/android/systemui/screenrecord/ScreenRecordingAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 117
    invoke-virtual {p1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 118
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mOptions:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 119
    iget-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mOptions:Landroid/widget/Spinner;

    new-instance v0, Lcom/android/systemui/screenrecord/-$$Lambda$ScreenRecordDialog$cUVjQAzT3j1yIYL-9zw8455dx4I;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenrecord/-$$Lambda$ScreenRecordDialog$cUVjQAzT3j1yIYL-9zw8455dx4I;-><init>(Lcom/android/systemui/screenrecord/ScreenRecordDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemClickListenerInt(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 123
    invoke-direct {p0}, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->loadPrefs()V

    return-void
.end method
