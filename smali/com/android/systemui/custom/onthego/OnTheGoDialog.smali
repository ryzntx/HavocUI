.class public Lcom/android/systemui/custom/onthego/OnTheGoDialog;
.super Landroid/app/Activity;
.source "OnTheGoDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 0

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/android/systemui/custom/onthego/OnTheGoDialog;->startService()V

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private startService()V
    .locals 3

    .line 104
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.custom.onthego.OnTheGoService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 107
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "start"

    .line 108
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$OnTheGoDialog(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/custom/onthego/OnTheGoDialog;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onCreate$1$OnTheGoDialog(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/custom/onthego/OnTheGoDialog;->lambda$onCreate$1(Landroid/view/View;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 48
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    const/16 v0, 0x10

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/Window;->addPrivateFlags(I)V

    const/16 v0, 0x50

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 51
    sget p1, Lcom/android/systemui/R$string;->onthego_label:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    .line 53
    sget p1, Lcom/android/systemui/R$layout;->onthego_dialog:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 55
    sget p1, Lcom/android/systemui/R$id;->button_cancel:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 56
    new-instance v0, Lcom/android/systemui/custom/onthego/-$$Lambda$OnTheGoDialog$fV-1yY4KD0O0qmQUX1dHhFd9Lt4;

    invoke-direct {v0, p0}, Lcom/android/systemui/custom/onthego/-$$Lambda$OnTheGoDialog$fV-1yY4KD0O0qmQUX1dHhFd9Lt4;-><init>(Lcom/android/systemui/custom/onthego/OnTheGoDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    sget p1, Lcom/android/systemui/R$id;->button_start:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 61
    new-instance v0, Lcom/android/systemui/custom/onthego/-$$Lambda$OnTheGoDialog$2ssWeNpwkiXaUm_MxDsUCrrc780;

    invoke-direct {v0, p0}, Lcom/android/systemui/custom/onthego/-$$Lambda$OnTheGoDialog$2ssWeNpwkiXaUm_MxDsUCrrc780;-><init>(Lcom/android/systemui/custom/onthego/OnTheGoDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 68
    sget v0, Lcom/android/systemui/R$id;->alpha_slider:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    const-string v1, "on_the_go_alpha"

    const/16 v2, 0x32

    .line 69
    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 71
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 72
    new-instance v1, Lcom/android/systemui/custom/onthego/OnTheGoDialog$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/custom/onthego/OnTheGoDialog$1;-><init>(Lcom/android/systemui/custom/onthego/OnTheGoDialog;Landroid/content/ContentResolver;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 86
    invoke-static {p0}, Lcom/android/internal/util/custom/OnTheGoUtils;->hasFrontCamera(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    sget p1, Lcom/android/systemui/R$id;->onthego_front_camera:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 89
    :cond_0
    sget v0, Lcom/android/systemui/R$id;->onthego_camera_toggle:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    const-string v1, "on_the_go_camera"

    const/4 v2, 0x0

    .line 90
    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    move v2, v3

    .line 92
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 93
    new-instance v1, Lcom/android/systemui/custom/onthego/OnTheGoDialog$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/custom/onthego/OnTheGoDialog$2;-><init>(Lcom/android/systemui/custom/onthego/OnTheGoDialog;Landroid/content/ContentResolver;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_0
    return-void
.end method
