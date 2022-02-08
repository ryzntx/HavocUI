.class public Lcom/havoc/support/preferences/ColorBlendPreference;
.super Landroidx/preference/Preference;
.source "ColorBlendPreference.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mBlendReverse:Z

.field private mBlendReverseKey:Ljava/lang/String;

.field private mColorEnd:I

.field private mColorEndKey:Ljava/lang/String;

.field private mColorStart:I

.field private mColorStartKey:Ljava/lang/String;

.field private mDefaultBlendReverse:Z

.field private mDefaultColorEnd:I

.field private mDefaultColorStart:I

.field private mDialog:Landroid/app/AlertDialog;

.field private mDialogColorPreviewBetweenText:Landroid/widget/TextView;

.field private mDialogColorPreviewEndText:Landroid/widget/TextView;

.field private mDialogColorPreviewSlider:Landroid/widget/SeekBar;

.field private mDialogColorPreviewStartText:Landroid/widget/TextView;

.field private mDialogColorPreviewText:Landroid/widget/TextView;

.field private mDialogPreviewClickListener:Landroid/view/View$OnClickListener;

.field private mDialogPreviewColorBetween:Landroid/view/View;

.field private mDialogPreviewColorEnd:Landroid/view/View;

.field private mDialogPreviewColorStart:Landroid/view/View;

.field private mDialogPreviewSliderChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mEndColorChangedListener:Lcom/havoc/support/colorpicker/ColorPickerDialog$OnColorChangedListener;

.field private mPreviewBetweenText:Ljava/lang/String;

.field private mPreviewBlendReverse:Z

.field private mPreviewColorEnd:I

.field private mPreviewColorStart:I

.field private mPreviewEndText:Ljava/lang/String;

.field private mPreviewStartText:Ljava/lang/String;

.field private mStartColorChangedListener:Lcom/havoc/support/colorpicker/ColorPickerDialog$OnColorChangedListener;

.field private mViewColorBetween:Landroid/view/View;

.field private mViewColorEnd:Landroid/view/View;

.field private mViewColorStart:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 93
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, -0x10000

    .line 51
    iput v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDefaultColorStart:I

    const v1, -0xff0100

    .line 52
    iput v1, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDefaultColorEnd:I

    const/4 v2, 0x0

    .line 53
    iput-boolean v2, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDefaultBlendReverse:Z

    .line 55
    iput v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mColorStart:I

    .line 56
    iput v1, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mColorEnd:I

    .line 57
    iput-boolean v2, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mBlendReverse:Z

    .line 147
    new-instance v0, Lcom/havoc/support/preferences/ColorBlendPreference$1;

    invoke-direct {v0, p0}, Lcom/havoc/support/preferences/ColorBlendPreference$1;-><init>(Lcom/havoc/support/preferences/ColorBlendPreference;)V

    iput-object v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mStartColorChangedListener:Lcom/havoc/support/colorpicker/ColorPickerDialog$OnColorChangedListener;

    .line 155
    new-instance v0, Lcom/havoc/support/preferences/ColorBlendPreference$2;

    invoke-direct {v0, p0}, Lcom/havoc/support/preferences/ColorBlendPreference$2;-><init>(Lcom/havoc/support/preferences/ColorBlendPreference;)V

    iput-object v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mEndColorChangedListener:Lcom/havoc/support/colorpicker/ColorPickerDialog$OnColorChangedListener;

    .line 322
    new-instance v0, Lcom/havoc/support/preferences/ColorBlendPreference$8;

    invoke-direct {v0, p0}, Lcom/havoc/support/preferences/ColorBlendPreference$8;-><init>(Lcom/havoc/support/preferences/ColorBlendPreference;)V

    iput-object v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDialogPreviewClickListener:Landroid/view/View$OnClickListener;

    .line 353
    new-instance v0, Lcom/havoc/support/preferences/ColorBlendPreference$9;

    invoke-direct {v0, p0}, Lcom/havoc/support/preferences/ColorBlendPreference$9;-><init>(Lcom/havoc/support/preferences/ColorBlendPreference;)V

    iput-object v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDialogPreviewSliderChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/havoc/support/preferences/ColorBlendPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/havoc/support/preferences/ColorBlendPreference;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mPreviewColorStart:I

    return p0
.end method

.method static synthetic access$002(Lcom/havoc/support/preferences/ColorBlendPreference;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mPreviewColorStart:I

    return p1
.end method

.method static synthetic access$100(Lcom/havoc/support/preferences/ColorBlendPreference;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/havoc/support/preferences/ColorBlendPreference;->updateDialogPreview()V

    return-void
.end method

.method static synthetic access$1000(Lcom/havoc/support/preferences/ColorBlendPreference;)Lcom/havoc/support/colorpicker/ColorPickerDialog$OnColorChangedListener;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mStartColorChangedListener:Lcom/havoc/support/colorpicker/ColorPickerDialog$OnColorChangedListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/havoc/support/preferences/ColorBlendPreference;)Landroid/view/View;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDialogPreviewColorEnd:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/havoc/support/preferences/ColorBlendPreference;)Lcom/havoc/support/colorpicker/ColorPickerDialog$OnColorChangedListener;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mEndColorChangedListener:Lcom/havoc/support/colorpicker/ColorPickerDialog$OnColorChangedListener;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/havoc/support/preferences/ColorBlendPreference;)Landroid/view/View;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDialogPreviewColorBetween:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/havoc/support/preferences/ColorBlendPreference;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mPreviewBlendReverse:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/havoc/support/preferences/ColorBlendPreference;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mPreviewBlendReverse:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/havoc/support/preferences/ColorBlendPreference;)Landroid/widget/SeekBar;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDialogColorPreviewSlider:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/havoc/support/preferences/ColorBlendPreference;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/havoc/support/preferences/ColorBlendPreference;->updateDialogSliderPreview()V

    return-void
.end method

.method static synthetic access$1700(Lcom/havoc/support/preferences/ColorBlendPreference;)Landroid/widget/TextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDialogColorPreviewText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/havoc/support/preferences/ColorBlendPreference;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mPreviewColorEnd:I

    return p0
.end method

.method static synthetic access$202(Lcom/havoc/support/preferences/ColorBlendPreference;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mPreviewColorEnd:I

    return p1
.end method

.method static synthetic access$302(Lcom/havoc/support/preferences/ColorBlendPreference;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/havoc/support/preferences/ColorBlendPreference;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDefaultColorStart:I

    return p0
.end method

.method static synthetic access$500(Lcom/havoc/support/preferences/ColorBlendPreference;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDefaultColorEnd:I

    return p0
.end method

.method static synthetic access$600(Lcom/havoc/support/preferences/ColorBlendPreference;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDefaultBlendReverse:Z

    return p0
.end method

.method static synthetic access$700(Lcom/havoc/support/preferences/ColorBlendPreference;IIZ)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/havoc/support/preferences/ColorBlendPreference;->setValues(IIZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/havoc/support/preferences/ColorBlendPreference;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/havoc/support/preferences/ColorBlendPreference;->persistValues()V

    return-void
.end method

.method static synthetic access$900(Lcom/havoc/support/preferences/ColorBlendPreference;)Landroid/view/View;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDialogPreviewColorStart:Landroid/view/View;

    return-object p0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 103
    invoke-virtual {p0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    if-eqz p2, :cond_3

    .line 105
    sget-object v0, Lcom/havoc/support/R$styleable;->ColorBlendPreference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 107
    sget p2, Lcom/havoc/support/R$styleable;->ColorBlendPreference_defaultValueColorStart:I

    iget v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDefaultColorStart:I

    .line 108
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDefaultColorStart:I

    .line 110
    sget p2, Lcom/havoc/support/R$styleable;->ColorBlendPreference_defaultValueColorEnd:I

    iget v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDefaultColorEnd:I

    .line 111
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDefaultColorEnd:I

    .line 113
    sget p2, Lcom/havoc/support/R$styleable;->ColorBlendPreference_defaultValueBlendReverse:I

    iget-boolean v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDefaultBlendReverse:Z

    .line 114
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDefaultBlendReverse:Z

    .line 116
    sget p2, Lcom/havoc/support/R$styleable;->ColorBlendPreference_keyColorStart:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mColorStartKey:Ljava/lang/String;

    .line 117
    sget p2, Lcom/havoc/support/R$styleable;->ColorBlendPreference_keyColorEnd:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mColorEndKey:Ljava/lang/String;

    .line 118
    sget p2, Lcom/havoc/support/R$styleable;->ColorBlendPreference_keyBlendReverse:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mBlendReverseKey:Ljava/lang/String;

    .line 120
    sget p2, Lcom/havoc/support/R$styleable;->ColorBlendPreference_previewStartText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mPreviewStartText:Ljava/lang/String;

    if-nez p2, :cond_0

    .line 122
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/havoc/support/R$string;->color_preview_start:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mPreviewStartText:Ljava/lang/String;

    .line 125
    :cond_0
    sget p2, Lcom/havoc/support/R$styleable;->ColorBlendPreference_previewEndText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mPreviewEndText:Ljava/lang/String;

    if-nez p2, :cond_1

    .line 127
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/havoc/support/R$string;->color_preview_end:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mPreviewEndText:Ljava/lang/String;

    .line 130
    :cond_1
    sget p2, Lcom/havoc/support/R$styleable;->ColorBlendPreference_previewBetweenText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mPreviewBetweenText:Ljava/lang/String;

    if-nez p2, :cond_2

    .line 132
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/havoc/support/R$string;->color_preview_between:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mPreviewBetweenText:Ljava/lang/String;

    .line 135
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 136
    invoke-direct {p0}, Lcom/havoc/support/preferences/ColorBlendPreference;->loadPreferences()V

    .line 138
    :cond_3
    sget p1, Lcom/havoc/support/R$layout;->color_blend_preview:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method private loadPreferences()V
    .locals 3

    .line 165
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "ColorBlendPreference"

    const-string v1, "No preference data store available, not using persisted values"

    .line 167
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDefaultColorStart:I

    iput v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mColorStart:I

    .line 169
    iget v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDefaultColorEnd:I

    iput v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mColorEnd:I

    .line 170
    iget-boolean v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDefaultBlendReverse:Z

    iput-boolean v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mBlendReverse:Z

    goto :goto_0

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mColorStartKey:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 173
    iget v2, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDefaultColorStart:I

    invoke-virtual {v0, v1, v2}, Landroidx/preference/PreferenceDataStore;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mColorStart:I

    .line 175
    :cond_1
    iget-object v1, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mColorEndKey:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 176
    iget v2, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDefaultColorEnd:I

    invoke-virtual {v0, v1, v2}, Landroidx/preference/PreferenceDataStore;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mColorEnd:I

    .line 178
    :cond_2
    iget-object v1, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mBlendReverseKey:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 179
    iget-boolean v2, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDefaultBlendReverse:Z

    invoke-virtual {v0, v1, v2}, Landroidx/preference/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mBlendReverse:Z

    .line 182
    :cond_3
    :goto_0
    iget v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mColorStart:I

    iput v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mPreviewColorStart:I

    .line 183
    iget v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mColorEnd:I

    iput v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mPreviewColorEnd:I

    .line 184
    iget-boolean v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mBlendReverse:Z

    iput-boolean v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mPreviewBlendReverse:Z

    return-void
.end method

.method private persistValues()V
    .locals 4

    .line 206
    iget-object v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDialog:Landroid/app/AlertDialog;

    const-string v1, "ColorBlendPreference"

    if-nez v0, :cond_0

    const-string p0, "persistValues() called without open dialog"

    .line 207
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 210
    :cond_0
    iget v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mPreviewColorStart:I

    iget v2, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mPreviewColorEnd:I

    iget-boolean v3, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mPreviewBlendReverse:Z

    invoke-direct {p0, v0, v2, v3}, Lcom/havoc/support/preferences/ColorBlendPreference;->setValues(IIZ)V

    const-string v0, "Persisting values"

    .line 211
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 216
    :cond_1
    iget-object v2, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mColorStartKey:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v2, "Missing color start key"

    .line 217
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 219
    :cond_2
    iget v3, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mPreviewColorStart:I

    invoke-virtual {v0, v2, v3}, Landroidx/preference/PreferenceDataStore;->putInt(Ljava/lang/String;I)V

    .line 221
    :goto_0
    iget-object v2, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mColorEndKey:Ljava/lang/String;

    if-nez v2, :cond_3

    const-string v2, "Missing color end key"

    .line 222
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 224
    :cond_3
    iget v3, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mPreviewColorEnd:I

    invoke-virtual {v0, v2, v3}, Landroidx/preference/PreferenceDataStore;->putInt(Ljava/lang/String;I)V

    .line 226
    :goto_1
    iget-object v2, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mBlendReverseKey:Ljava/lang/String;

    if-nez v2, :cond_4

    const-string v0, "Missing blend reverse key"

    .line 227
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 229
    :cond_4
    iget-boolean v1, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mPreviewBlendReverse:Z

    invoke-virtual {v0, v2, v1}, Landroidx/preference/PreferenceDataStore;->putBoolean(Ljava/lang/String;Z)V

    .line 232
    :goto_2
    invoke-direct {p0}, Lcom/havoc/support/preferences/ColorBlendPreference;->loadPreferences()V

    return-void
.end method

.method private setValues(IIZ)V
    .locals 0

    .line 188
    iput p1, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mColorStart:I

    .line 189
    iput p2, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mColorEnd:I

    .line 190
    iput-boolean p3, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mBlendReverse:Z

    .line 191
    iput p1, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mPreviewColorStart:I

    .line 192
    iput p2, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mPreviewColorEnd:I

    .line 193
    iput-boolean p3, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mPreviewBlendReverse:Z

    .line 194
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 196
    iget-object p2, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mColorStartKey:Ljava/lang/String;

    iget p3, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mColorStart:I

    invoke-virtual {p1, p2, p3}, Landroidx/preference/PreferenceDataStore;->putInt(Ljava/lang/String;I)V

    .line 197
    iget-object p2, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mColorEndKey:Ljava/lang/String;

    iget p3, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mColorEnd:I

    invoke-virtual {p1, p2, p3}, Landroidx/preference/PreferenceDataStore;->putInt(Ljava/lang/String;I)V

    .line 198
    iget-object p2, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mBlendReverseKey:Ljava/lang/String;

    iget-boolean p3, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mBlendReverse:Z

    invoke-virtual {p1, p2, p3}, Landroidx/preference/PreferenceDataStore;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-string p1, "ColorBlendPreference"

    const-string p2, "No preference data store available, not persisting values"

    .line 200
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :goto_0
    invoke-direct {p0}, Lcom/havoc/support/preferences/ColorBlendPreference;->updatePreview()V

    return-void
.end method

.method private showDialog()V
    .locals 3

    .line 242
    iget v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mColorStart:I

    iput v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mPreviewColorStart:I

    .line 243
    iget v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mColorEnd:I

    iput v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mPreviewColorEnd:I

    .line 244
    iget-boolean v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mBlendReverse:Z

    iput-boolean v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mPreviewBlendReverse:Z

    .line 245
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 246
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/havoc/support/R$layout;->color_blend_preference_dialog:I

    .line 247
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/havoc/support/R$string;->color_blend_ok:I

    new-instance v2, Lcom/havoc/support/preferences/ColorBlendPreference$7;

    invoke-direct {v2, p0}, Lcom/havoc/support/preferences/ColorBlendPreference$7;-><init>(Lcom/havoc/support/preferences/ColorBlendPreference;)V

    .line 248
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/havoc/support/R$string;->color_blend_cancel:I

    new-instance v2, Lcom/havoc/support/preferences/ColorBlendPreference$6;

    invoke-direct {v2, p0}, Lcom/havoc/support/preferences/ColorBlendPreference$6;-><init>(Lcom/havoc/support/preferences/ColorBlendPreference;)V

    .line 255
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/havoc/support/R$string;->color_blend_reset:I

    new-instance v2, Lcom/havoc/support/preferences/ColorBlendPreference$5;

    invoke-direct {v2, p0}, Lcom/havoc/support/preferences/ColorBlendPreference$5;-><init>(Lcom/havoc/support/preferences/ColorBlendPreference;)V

    .line 262
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/havoc/support/preferences/ColorBlendPreference$4;

    invoke-direct {v1, p0}, Lcom/havoc/support/preferences/ColorBlendPreference$4;-><init>(Lcom/havoc/support/preferences/ColorBlendPreference;)V

    .line 271
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/havoc/support/preferences/ColorBlendPreference$3;

    invoke-direct {v1, p0}, Lcom/havoc/support/preferences/ColorBlendPreference$3;-><init>(Lcom/havoc/support/preferences/ColorBlendPreference;)V

    .line 277
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDialog:Landroid/app/AlertDialog;

    .line 284
    sget v1, Lcom/havoc/support/R$id;->color_start:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDialogPreviewColorStart:Landroid/view/View;

    .line 285
    iget-object v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDialog:Landroid/app/AlertDialog;

    sget v1, Lcom/havoc/support/R$id;->color_end:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDialogPreviewColorEnd:Landroid/view/View;

    .line 286
    iget-object v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDialog:Landroid/app/AlertDialog;

    sget v1, Lcom/havoc/support/R$id;->color_between:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDialogPreviewColorBetween:Landroid/view/View;

    .line 287
    iget-object v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDialog:Landroid/app/AlertDialog;

    sget v1, Lcom/havoc/support/R$id;->color_preview_slider:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDialogColorPreviewSlider:Landroid/widget/SeekBar;

    .line 288
    iget-object v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDialog:Landroid/app/AlertDialog;

    sget v1, Lcom/havoc/support/R$id;->color_preview_text:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDialogColorPreviewText:Landroid/widget/TextView;

    .line 289
    iget-object v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDialog:Landroid/app/AlertDialog;

    sget v1, Lcom/havoc/support/R$id;->color_preview_start_text:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDialogColorPreviewStartText:Landroid/widget/TextView;

    .line 290
    iget-object v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDialog:Landroid/app/AlertDialog;

    sget v1, Lcom/havoc/support/R$id;->color_preview_end_text:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDialogColorPreviewEndText:Landroid/widget/TextView;

    .line 291
    iget-object v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDialog:Landroid/app/AlertDialog;

    sget v1, Lcom/havoc/support/R$id;->color_preview_between_text:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDialogColorPreviewBetweenText:Landroid/widget/TextView;

    .line 292
    iget-object v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDialogPreviewColorStart:Landroid/view/View;

    iget-object v1, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDialogPreviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iget-object v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDialogPreviewColorEnd:Landroid/view/View;

    iget-object v1, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDialogPreviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDialogPreviewColorBetween:Landroid/view/View;

    iget-object v1, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDialogPreviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    iget-object v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDialogColorPreviewText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDialogPreviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iget-object v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDialogColorPreviewSlider:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDialogPreviewSliderChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 297
    iget-object v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDialogColorPreviewStartText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mPreviewStartText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDialogColorPreviewEndText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mPreviewEndText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDialogColorPreviewBetweenText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mPreviewBetweenText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    invoke-direct {p0}, Lcom/havoc/support/preferences/ColorBlendPreference;->updateDialogPreview()V

    return-void
.end method

.method private updateDialogPreview()V
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    const-string p0, "ColorBlendPreference"

    const-string v0, "updateDialogPreview() called without open dialog"

    .line 305
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDialogPreviewColorStart:Landroid/view/View;

    iget v1, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mPreviewColorStart:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 309
    iget-object v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDialogPreviewColorEnd:Landroid/view/View;

    iget v1, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mPreviewColorEnd:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 310
    invoke-direct {p0}, Lcom/havoc/support/preferences/ColorBlendPreference;->updateDialogSliderPreview()V

    return-void
.end method

.method private updateDialogSliderPreview()V
    .locals 5

    .line 314
    iget-object v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDialogColorPreviewSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 315
    iget-object v1, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDialogPreviewColorBetween:Landroid/view/View;

    iget v2, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mPreviewColorEnd:I

    iget v3, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mPreviewColorStart:I

    iget-boolean v4, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mPreviewBlendReverse:Z

    .line 316
    invoke-static {v2, v3, v4, v0}, Lcom/android/internal/util/custom/Utils;->getBlendColorForPercent(IIZI)I

    move-result v2

    .line 315
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 318
    iget-object v1, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mDialogColorPreviewText:Landroid/widget/TextView;

    .line 319
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v2, Lcom/havoc/support/R$string;->color_blend_preview:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 318
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updatePreview()V
    .locals 4

    .line 368
    iget-object v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mViewColorStart:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 369
    iget v1, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mColorStart:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mViewColorEnd:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 372
    iget v1, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mColorEnd:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 374
    :cond_1
    iget-object v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mViewColorBetween:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 375
    iget v1, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mColorEnd:I

    iget v2, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mColorStart:I

    iget-boolean p0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mBlendReverse:Z

    const/16 v3, 0x32

    .line 376
    invoke-static {v1, v2, p0, v3}, Lcom/android/internal/util/custom/Utils;->getBlendColorForPercent(IIZI)I

    move-result p0

    .line 375
    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 382
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 383
    sget v0, Lcom/havoc/support/R$id;->color_preview_start:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mViewColorStart:Landroid/view/View;

    .line 384
    sget v0, Lcom/havoc/support/R$id;->color_preview_end:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mViewColorEnd:Landroid/view/View;

    .line 385
    sget v0, Lcom/havoc/support/R$id;->color_preview_between:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/havoc/support/preferences/ColorBlendPreference;->mViewColorBetween:Landroid/view/View;

    .line 386
    invoke-direct {p0}, Lcom/havoc/support/preferences/ColorBlendPreference;->updatePreview()V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 237
    invoke-direct {p0}, Lcom/havoc/support/preferences/ColorBlendPreference;->showDialog()V

    const/4 p0, 0x1

    return p0
.end method

.method public setPreferenceDataStore(Landroidx/preference/PreferenceDataStore;)V
    .locals 0

    .line 143
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setPreferenceDataStore(Landroidx/preference/PreferenceDataStore;)V

    .line 144
    invoke-direct {p0}, Lcom/havoc/support/preferences/ColorBlendPreference;->loadPreferences()V

    return-void
.end method
