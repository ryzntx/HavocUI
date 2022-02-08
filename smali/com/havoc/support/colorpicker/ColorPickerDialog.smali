.class public Lcom/havoc/support/colorpicker/ColorPickerDialog;
.super Landroid/app/AlertDialog;
.source "ColorPickerDialog.java"

# interfaces
.implements Lcom/havoc/support/colorpicker/ColorPickerView$OnColorChangedListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/havoc/support/colorpicker/ColorPickerDialog$OnColorChangedListener;
    }
.end annotation


# instance fields
.field private mColorPicker:Lcom/havoc/support/colorpicker/ColorPickerView;

.field private mContext:Landroid/content/Context;

.field private mHex:Landroid/widget/EditText;

.field private mListener:Lcom/havoc/support/colorpicker/ColorPickerDialog$OnColorChangedListener;

.field private mNewColor:Lcom/havoc/support/colorpicker/ColorPickerPanelView;

.field private mNoMan:Landroid/app/NotificationManager;

.field private mOldColor:Lcom/havoc/support/colorpicker/ColorPickerPanelView;

.field private mShowLedPreview:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/havoc/support/colorpicker/ColorPickerDialog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 60
    iput-object p1, p0, Lcom/havoc/support/colorpicker/ColorPickerDialog;->mContext:Landroid/content/Context;

    .line 61
    iput-boolean p3, p0, Lcom/havoc/support/colorpicker/ColorPickerDialog;->mShowLedPreview:Z

    .line 62
    invoke-direct {p0, p2}, Lcom/havoc/support/colorpicker/ColorPickerDialog;->init(I)V

    return-void
.end method

.method private init(I)V
    .locals 2

    .line 66
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 68
    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->requestWindowFeature(I)Z

    .line 69
    invoke-direct {p0, p1}, Lcom/havoc/support/colorpicker/ColorPickerDialog;->setUp(I)V

    :cond_0
    return-void
.end method

.method private setColorFromHex()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/havoc/support/colorpicker/ColorPickerDialog;->mHex:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    :try_start_0
    invoke-static {v0}, Lcom/havoc/support/colorpicker/ColorPickerPreference;->convertToColorInt(Ljava/lang/String;)I

    move-result v0

    .line 77
    iget-object p0, p0, Lcom/havoc/support/colorpicker/ColorPickerDialog;->mColorPicker:Lcom/havoc/support/colorpicker/ColorPickerView;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/havoc/support/colorpicker/ColorPickerView;->setColor(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private setUp(I)V
    .locals 5

    .line 84
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 86
    iget-object v1, p0, Lcom/havoc/support/colorpicker/ColorPickerDialog;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    .line 87
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/havoc/support/colorpicker/ColorPickerDialog;->mNoMan:Landroid/app/NotificationManager;

    .line 90
    sget v1, Lcom/havoc/support/R$layout;->preference_color_picker:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 92
    sget v1, Lcom/havoc/support/R$id;->color_picker_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/havoc/support/colorpicker/ColorPickerView;

    iput-object v1, p0, Lcom/havoc/support/colorpicker/ColorPickerDialog;->mColorPicker:Lcom/havoc/support/colorpicker/ColorPickerView;

    .line 93
    sget v1, Lcom/havoc/support/R$id;->old_color_panel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/havoc/support/colorpicker/ColorPickerPanelView;

    iput-object v1, p0, Lcom/havoc/support/colorpicker/ColorPickerDialog;->mOldColor:Lcom/havoc/support/colorpicker/ColorPickerPanelView;

    .line 94
    sget v1, Lcom/havoc/support/R$id;->new_color_panel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/havoc/support/colorpicker/ColorPickerPanelView;

    iput-object v1, p0, Lcom/havoc/support/colorpicker/ColorPickerDialog;->mNewColor:Lcom/havoc/support/colorpicker/ColorPickerPanelView;

    .line 96
    sget v1, Lcom/havoc/support/R$id;->hex:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/havoc/support/colorpicker/ColorPickerDialog;->mHex:Landroid/widget/EditText;

    .line 98
    iget-object v1, p0, Lcom/havoc/support/colorpicker/ColorPickerDialog;->mOldColor:Lcom/havoc/support/colorpicker/ColorPickerPanelView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/havoc/support/colorpicker/ColorPickerDialog;->mColorPicker:Lcom/havoc/support/colorpicker/ColorPickerView;

    invoke-virtual {v2}, Lcom/havoc/support/colorpicker/ColorPickerView;->getDrawingOffset()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/havoc/support/colorpicker/ColorPickerDialog;->mColorPicker:Lcom/havoc/support/colorpicker/ColorPickerView;

    .line 99
    invoke-virtual {v3}, Lcom/havoc/support/colorpicker/ColorPickerView;->getDrawingOffset()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v4, 0x0

    .line 98
    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 101
    iget-object v1, p0, Lcom/havoc/support/colorpicker/ColorPickerDialog;->mOldColor:Lcom/havoc/support/colorpicker/ColorPickerPanelView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v1, p0, Lcom/havoc/support/colorpicker/ColorPickerDialog;->mNewColor:Lcom/havoc/support/colorpicker/ColorPickerPanelView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v1, p0, Lcom/havoc/support/colorpicker/ColorPickerDialog;->mColorPicker:Lcom/havoc/support/colorpicker/ColorPickerView;

    invoke-virtual {v1, p0}, Lcom/havoc/support/colorpicker/ColorPickerView;->setOnColorChangedListener(Lcom/havoc/support/colorpicker/ColorPickerView$OnColorChangedListener;)V

    .line 104
    iget-object v1, p0, Lcom/havoc/support/colorpicker/ColorPickerDialog;->mOldColor:Lcom/havoc/support/colorpicker/ColorPickerPanelView;

    invoke-virtual {v1, p1}, Lcom/havoc/support/colorpicker/ColorPickerPanelView;->setColor(I)V

    .line 105
    iget-object v1, p0, Lcom/havoc/support/colorpicker/ColorPickerDialog;->mColorPicker:Lcom/havoc/support/colorpicker/ColorPickerView;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/havoc/support/colorpicker/ColorPickerView;->setColor(IZ)V

    .line 106
    invoke-direct {p0, p1}, Lcom/havoc/support/colorpicker/ColorPickerDialog;->showLed(I)V

    .line 108
    iget-object v1, p0, Lcom/havoc/support/colorpicker/ColorPickerDialog;->mHex:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 109
    invoke-static {p1}, Lcom/havoc/support/colorpicker/ColorPickerPreference;->convertToRGB(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object p1, p0, Lcom/havoc/support/colorpicker/ColorPickerDialog;->mHex:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 113
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    return-void
.end method

.method private showLed(I)V
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/havoc/support/colorpicker/ColorPickerDialog;->mShowLedPreview:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const p1, 0xffffff

    .line 135
    :cond_0
    iget-object p0, p0, Lcom/havoc/support/colorpicker/ColorPickerDialog;->mNoMan:Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->forceShowLedLight(I)V

    :cond_1
    return-void
.end method

.method private switchOffLed()V
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcom/havoc/support/colorpicker/ColorPickerDialog;->mShowLedPreview:Z

    if-eqz v0, :cond_0

    .line 141
    iget-object p0, p0, Lcom/havoc/support/colorpicker/ColorPickerDialog;->mNoMan:Landroid/app/NotificationManager;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->forceShowLedLight(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/havoc/support/R$id;->new_color_panel:I

    if-ne p1, v0, :cond_0

    .line 175
    iget-object p1, p0, Lcom/havoc/support/colorpicker/ColorPickerDialog;->mListener:Lcom/havoc/support/colorpicker/ColorPickerDialog$OnColorChangedListener;

    if-eqz p1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/havoc/support/colorpicker/ColorPickerDialog;->mNewColor:Lcom/havoc/support/colorpicker/ColorPickerPanelView;

    invoke-virtual {v0}, Lcom/havoc/support/colorpicker/ColorPickerPanelView;->getColor()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/havoc/support/colorpicker/ColorPickerDialog$OnColorChangedListener;->onColorChanged(I)V

    .line 179
    :cond_0
    iget-object p1, p0, Lcom/havoc/support/colorpicker/ColorPickerDialog;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/havoc/support/util/VibrationUtils;->doHapticFeedback(Landroid/content/Context;I)V

    .line 180
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 181
    invoke-direct {p0}, Lcom/havoc/support/colorpicker/ColorPickerDialog;->switchOffLed()V

    return-void
.end method

.method public onColorChanged(I)V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/havoc/support/colorpicker/ColorPickerDialog;->mNewColor:Lcom/havoc/support/colorpicker/ColorPickerPanelView;

    invoke-virtual {v0, p1}, Lcom/havoc/support/colorpicker/ColorPickerPanelView;->setColor(I)V

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/havoc/support/colorpicker/ColorPickerDialog;->mHex:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/havoc/support/colorpicker/ColorPickerDialog;->mHex:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/havoc/support/colorpicker/ColorPickerPreference;->convertToRGB(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :catch_0
    :cond_0
    invoke-direct {p0, p1}, Lcom/havoc/support/colorpicker/ColorPickerDialog;->showLed(I)V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 164
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x42

    if-ne p2, p1, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/havoc/support/colorpicker/ColorPickerDialog;->setColorFromHex()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 203
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 204
    iget-object v0, p0, Lcom/havoc/support/colorpicker/ColorPickerDialog;->mOldColor:Lcom/havoc/support/colorpicker/ColorPickerPanelView;

    const-string v1, "old_color"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/havoc/support/colorpicker/ColorPickerPanelView;->setColor(I)V

    .line 205
    iget-object p0, p0, Lcom/havoc/support/colorpicker/ColorPickerDialog;->mColorPicker:Lcom/havoc/support/colorpicker/ColorPickerView;

    const-string v0, "new_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/havoc/support/colorpicker/ColorPickerView;->setColor(IZ)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 193
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/havoc/support/colorpicker/ColorPickerDialog;->mOldColor:Lcom/havoc/support/colorpicker/ColorPickerPanelView;

    invoke-virtual {v1}, Lcom/havoc/support/colorpicker/ColorPickerPanelView;->getColor()I

    move-result v1

    const-string v2, "old_color"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 195
    iget-object v1, p0, Lcom/havoc/support/colorpicker/ColorPickerDialog;->mNewColor:Lcom/havoc/support/colorpicker/ColorPickerPanelView;

    invoke-virtual {v1}, Lcom/havoc/support/colorpicker/ColorPickerPanelView;->getColor()I

    move-result v1

    const-string v2, "new_color"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 196
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 197
    invoke-direct {p0}, Lcom/havoc/support/colorpicker/ColorPickerDialog;->switchOffLed()V

    return-object v0
.end method

.method public onStop()V
    .locals 0

    .line 186
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 187
    invoke-direct {p0}, Lcom/havoc/support/colorpicker/ColorPickerDialog;->switchOffLed()V

    return-void
.end method

.method setAlphaSliderVisible(Z)V
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/havoc/support/colorpicker/ColorPickerDialog;->mColorPicker:Lcom/havoc/support/colorpicker/ColorPickerView;

    invoke-virtual {p0, p1}, Lcom/havoc/support/colorpicker/ColorPickerView;->setAlphaSliderVisible(Z)V

    return-void
.end method

.method public setOnColorChangedListener(Lcom/havoc/support/colorpicker/ColorPickerDialog$OnColorChangedListener;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/havoc/support/colorpicker/ColorPickerDialog;->mListener:Lcom/havoc/support/colorpicker/ColorPickerDialog$OnColorChangedListener;

    return-void
.end method
