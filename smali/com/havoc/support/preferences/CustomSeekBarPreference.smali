.class public Lcom/havoc/support/preferences/CustomSeekBarPreference;
.super Landroidx/preference/Preference;
.source "CustomSeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field protected mContinuousUpdates:Z

.field protected mDefaultValue:I

.field protected mDefaultValueExists:Z

.field protected mInterval:I

.field protected mMaxValue:I

.field protected mMinValue:I

.field protected mMinusImageView:Landroid/widget/ImageView;

.field protected mPlusImageView:Landroid/widget/ImageView;

.field protected mResetImageView:Landroid/widget/ImageView;

.field protected mSeekBar:Landroid/widget/SeekBar;

.field protected mShowSign:Z

.field protected mTrackingTouch:Z

.field protected mTrackingValue:I

.field protected mUnits:Ljava/lang/String;

.field protected mValue:I

.field protected mValueTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 117
    sget v0, Landroidx/preference/R$attr;->preferenceStyle:I

    const v1, 0x101008e

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/havoc/support/preferences/CustomSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/havoc/support/preferences/CustomSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    const-string v0, "http://schemas.android.com/apk/res/com.android.settings"

    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->TAG:Ljava/lang/String;

    const/4 p3, 0x1

    .line 46
    iput p3, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mInterval:I

    const/4 p4, 0x0

    .line 47
    iput-boolean p4, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mShowSign:Z

    const-string v1, ""

    .line 48
    iput-object v1, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mUnits:Ljava/lang/String;

    .line 49
    iput-boolean p4, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mContinuousUpdates:Z

    .line 51
    iput p4, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mMinValue:I

    const/16 v1, 0x64

    .line 52
    iput v1, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mMaxValue:I

    .line 53
    iput-boolean p4, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mDefaultValueExists:Z

    .line 64
    iput-boolean p4, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mTrackingTouch:Z

    .line 72
    sget-object v1, Lcom/havoc/support/R$styleable;->CustomSeekBarPreference:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 74
    :try_start_0
    sget v2, Lcom/havoc/support/R$styleable;->CustomSeekBarPreference_showSign:I

    iget-boolean v3, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mShowSign:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mShowSign:Z

    .line 75
    sget v2, Lcom/havoc/support/R$styleable;->CustomSeekBarPreference_units:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mUnits:Ljava/lang/String;

    .line 78
    :cond_0
    sget v2, Lcom/havoc/support/R$styleable;->CustomSeekBarPreference_continuousUpdates:I

    iget-boolean v3, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mContinuousUpdates:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mContinuousUpdates:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :try_start_1
    const-string v1, "interval"

    .line 84
    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 86
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mInterval:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 88
    iget-object v2, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->TAG:Ljava/lang/String;

    const-string v3, "Invalid interval value"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    :cond_1
    :goto_0
    iget v1, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mMinValue:I

    const-string v2, "min"

    invoke-interface {p2, v0, v2, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mMinValue:I

    .line 92
    iget v0, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mMaxValue:I

    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v2, "max"

    invoke-interface {p2, v1, v2, v0}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mMaxValue:I

    .line 93
    iget v2, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mMinValue:I

    if-ge v0, v2, :cond_2

    .line 94
    iput v2, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mMaxValue:I

    :cond_2
    const-string v0, "defaultValue"

    .line 97
    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 98
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move p3, p4

    :goto_1
    iput-boolean p3, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mDefaultValueExists:Z

    if-eqz p3, :cond_4

    .line 100
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/havoc/support/preferences/CustomSeekBarPreference;->getLimitedValue(I)I

    move-result p3

    iput p3, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mDefaultValue:I

    .line 101
    iput p3, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mValue:I

    goto :goto_2

    .line 103
    :cond_4
    iget p3, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mMinValue:I

    iput p3, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mValue:I

    .line 106
    :goto_2
    new-instance p3, Landroid/widget/SeekBar;

    invoke-direct {p3, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p3, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 107
    sget p2, Lcom/havoc/support/R$layout;->preference_custom_seekbar:I

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 109
    iput-object p1, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mContext:Landroid/content/Context;

    return-void

    :catchall_0
    move-exception p0

    .line 80
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    throw p0
.end method


# virtual methods
.method protected changeValue(I)V
    .locals 0

    return-void
.end method

.method protected getLimitedValue(I)I
    .locals 1

    .line 165
    iget v0, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mMinValue:I

    if-ge p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mMaxValue:I

    if-le p1, p0, :cond_1

    move p1, p0

    :cond_1
    :goto_0
    return p1
.end method

.method protected getSeekValue(I)I
    .locals 1

    .line 169
    iget v0, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mMinValue:I

    sub-int/2addr v0, p1

    iget p0, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mInterval:I

    invoke-static {v0, p0}, Ljava/lang/Math;->floorDiv(II)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x0

    return p0
.end method

.method protected getTextValue(I)Ljava/lang/String;
    .locals 2

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mShowSign:Z

    if-eqz v1, :cond_0

    if-lez p1, :cond_0

    const-string v1, "+"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mUnits:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 128
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 131
    sget v1, Lcom/havoc/support/R$id;->seekbar:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    .line 134
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 136
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 137
    iget-object v0, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 141
    iget-object v1, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error binding view: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mMaxValue:I

    invoke-virtual {p0, v1}, Lcom/havoc/support/preferences/CustomSeekBarPreference;->getSeekValue(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 145
    iget-object v0, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mValue:I

    invoke-virtual {p0, v1}, Lcom/havoc/support/preferences/CustomSeekBarPreference;->getSeekValue(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 146
    iget-object v0, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 148
    sget v0, Lcom/havoc/support/R$id;->value:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mValueTextView:Landroid/widget/TextView;

    .line 149
    sget v0, Lcom/havoc/support/R$id;->reset:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mResetImageView:Landroid/widget/ImageView;

    .line 150
    sget v0, Lcom/havoc/support/R$id;->minus:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mMinusImageView:Landroid/widget/ImageView;

    .line 151
    sget v0, Lcom/havoc/support/R$id;->plus:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mPlusImageView:Landroid/widget/ImageView;

    .line 153
    invoke-virtual {p0}, Lcom/havoc/support/preferences/CustomSeekBarPreference;->updateValueViews()V

    .line 155
    iget-object p1, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 156
    iget-object p1, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mResetImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object p1, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mMinusImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object p1, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mPlusImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object p1, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mResetImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 160
    iget-object p1, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mMinusImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 161
    iget-object p1, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mPlusImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 256
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 257
    sget v0, Lcom/havoc/support/R$id;->reset:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    .line 258
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/havoc/support/R$string;->custom_seekbar_default_value_to_set:I

    new-array v4, v2, [Ljava/lang/Object;

    iget v5, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mDefaultValue:I

    invoke-virtual {p0, v5}, Lcom/havoc/support/preferences/CustomSeekBarPreference;->getTextValue(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 259
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 260
    :cond_0
    sget v0, Lcom/havoc/support/R$id;->minus:I

    if-ne p1, v0, :cond_1

    .line 261
    iget p1, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mValue:I

    iget v0, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mInterval:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1, v2}, Lcom/havoc/support/preferences/CustomSeekBarPreference;->setValue(IZ)V

    goto :goto_0

    .line 262
    :cond_1
    sget v0, Lcom/havoc/support/R$id;->plus:I

    if-ne p1, v0, :cond_2

    .line 263
    iget p1, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mValue:I

    iget v0, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mInterval:I

    add-int/2addr p1, v0

    invoke-virtual {p0, p1, v2}, Lcom/havoc/support/preferences/CustomSeekBarPreference;->setValue(IZ)V

    .line 265
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {p0, v1}, Lcom/havoc/support/util/VibrationUtils;->doHapticFeedback(Landroid/content/Context;I)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    .line 270
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 271
    sget v0, Lcom/havoc/support/R$id;->reset:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 272
    iget p1, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mDefaultValue:I

    invoke-virtual {p0, p1, v1}, Lcom/havoc/support/preferences/CustomSeekBarPreference;->setValue(IZ)V

    goto :goto_2

    .line 273
    :cond_0
    sget v0, Lcom/havoc/support/R$id;->minus:I

    const/4 v2, 0x2

    if-ne p1, v0, :cond_2

    .line 274
    iget p1, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mMaxValue:I

    iget v0, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mMinValue:I

    sub-int v3, p1, v0

    iget v4, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mInterval:I

    mul-int/2addr v4, v2

    if-le v3, v4, :cond_1

    add-int v3, p1, v0

    iget v4, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mValue:I

    mul-int/2addr v4, v2

    if-ge v3, v4, :cond_1

    add-int/2addr p1, v0

    invoke-static {p1, v2}, Ljava/lang/Math;->floorDiv(II)I

    move-result p1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mMinValue:I

    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/havoc/support/preferences/CustomSeekBarPreference;->setValue(IZ)V

    goto :goto_2

    .line 275
    :cond_2
    sget v0, Lcom/havoc/support/R$id;->plus:I

    if-ne p1, v0, :cond_4

    .line 276
    iget p1, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mMaxValue:I

    iget v0, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mMinValue:I

    sub-int v3, p1, v0

    iget v4, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mInterval:I

    mul-int/2addr v4, v2

    if-le v3, v4, :cond_3

    add-int v3, p1, v0

    iget v4, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mValue:I

    mul-int/2addr v4, v2

    if-le v3, v4, :cond_3

    add-int/2addr p1, v0

    mul-int/lit8 p1, p1, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->floorDiv(II)I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_3
    iget p1, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mMaxValue:I

    :goto_1
    invoke-virtual {p0, p1, v1}, Lcom/havoc/support/preferences/CustomSeekBarPreference;->setValue(IZ)V

    :cond_4
    :goto_2
    return v1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 221
    iget p1, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mMinValue:I

    iget p3, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mInterval:I

    mul-int/2addr p2, p3

    add-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/havoc/support/preferences/CustomSeekBarPreference;->getLimitedValue(I)I

    move-result p1

    .line 222
    iget-boolean p2, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mTrackingTouch:Z

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mContinuousUpdates:Z

    if-nez p2, :cond_0

    .line 223
    iput p1, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mTrackingValue:I

    .line 224
    invoke-virtual {p0}, Lcom/havoc/support/preferences/CustomSeekBarPreference;->updateValueViews()V

    .line 225
    iget-object p0, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mContext:Landroid/content/Context;

    const/16 p1, 0x15

    invoke-static {p0, p1}, Lcom/havoc/support/util/VibrationUtils;->doHapticFeedback(Landroid/content/Context;I)V

    goto :goto_0

    .line 226
    :cond_0
    iget p2, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mValue:I

    if-eq p2, p1, :cond_2

    .line 227
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 228
    iget-object p1, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget p2, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mValue:I

    invoke-virtual {p0, p2}, Lcom/havoc/support/preferences/CustomSeekBarPreference;->getSeekValue(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void

    .line 231
    :cond_1
    invoke-virtual {p0, p1}, Lcom/havoc/support/preferences/CustomSeekBarPreference;->changeValue(I)V

    .line 232
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistInt(I)Z

    .line 234
    iput p1, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mValue:I

    .line 235
    invoke-virtual {p0}, Lcom/havoc/support/preferences/CustomSeekBarPreference;->updateValueViews()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 284
    iget p1, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mValue:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->getPersistedInt(I)I

    move-result p1

    iput p1, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mValue:I

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 241
    iget p1, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mValue:I

    iput p1, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mTrackingValue:I

    const/4 p1, 0x1

    .line 242
    iput-boolean p1, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mTrackingTouch:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    const/4 p1, 0x0

    .line 247
    iput-boolean p1, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mTrackingTouch:Z

    .line 248
    iget-boolean v0, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mContinuousUpdates:Z

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mTrackingValue:I

    invoke-virtual {p0, v1}, Lcom/havoc/support/preferences/CustomSeekBarPreference;->getSeekValue(I)I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/havoc/support/preferences/CustomSeekBarPreference;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 251
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setValue(IZ)V
    .locals 1

    .line 337
    invoke-virtual {p0, p1}, Lcom/havoc/support/preferences/CustomSeekBarPreference;->getLimitedValue(I)I

    move-result p1

    .line 338
    iget v0, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mValue:I

    if-eq v0, p1, :cond_1

    if-eqz p2, :cond_0

    .line 340
    iget-object p2, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, p1}, Lcom/havoc/support/preferences/CustomSeekBarPreference;->getSeekValue(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 342
    :cond_0
    iput p1, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mValue:I

    :cond_1
    :goto_0
    return-void
.end method

.method protected updateValueViews()V
    .locals 10

    .line 177
    iget-object v0, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mValueTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 178
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/havoc/support/R$string;->custom_seekbar_value:I

    new-array v5, v1, [Ljava/lang/Object;

    .line 179
    iget-boolean v6, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mTrackingTouch:Z

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mContinuousUpdates:Z

    if-eqz v6, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    iget v6, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mTrackingValue:I

    invoke-virtual {p0, v6}, Lcom/havoc/support/preferences/CustomSeekBarPreference;->getTextValue(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 179
    :cond_1
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mValue:I

    invoke-virtual {p0, v7}, Lcom/havoc/support/preferences/CustomSeekBarPreference;->getTextValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    iget-boolean v7, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mDefaultValueExists:Z

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mValue:I

    iget v8, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mDefaultValue:I

    if-ne v7, v8, :cond_2

    .line 181
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/havoc/support/R$string;->custom_seekbar_default_value:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_2
    const-string v7, ""

    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    aput-object v6, v5, v2

    .line 178
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    :cond_3
    iget-object v0, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mResetImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 186
    iget-boolean v3, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mDefaultValueExists:Z

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mValue:I

    iget v4, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mDefaultValue:I

    if-eq v3, v4, :cond_5

    iget-boolean v3, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mTrackingTouch:Z

    if-eqz v3, :cond_4

    goto :goto_3

    .line 189
    :cond_4
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 187
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mResetImageView:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mMinusImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 194
    iget v3, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mValue:I

    iget v4, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mMinValue:I

    if-eq v3, v4, :cond_8

    iget-boolean v3, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mTrackingTouch:Z

    if-eqz v3, :cond_7

    goto :goto_5

    .line 199
    :cond_7
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 200
    iget-object v0, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mMinusImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_6

    .line 195
    :cond_8
    :goto_5
    iget-object v0, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mMinusImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 196
    iget-object v0, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mMinusImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/havoc/support/R$color;->disabled_text_color:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 204
    :cond_9
    :goto_6
    iget-object v0, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mPlusImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_c

    .line 205
    iget v3, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mValue:I

    iget v4, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mMaxValue:I

    if-eq v3, v4, :cond_b

    iget-boolean v3, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mTrackingTouch:Z

    if-eqz v3, :cond_a

    goto :goto_7

    .line 210
    :cond_a
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 211
    iget-object p0, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mPlusImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_8

    .line 206
    :cond_b
    :goto_7
    iget-object v0, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mPlusImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 207
    iget-object v0, p0, Lcom/havoc/support/preferences/CustomSeekBarPreference;->mPlusImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/havoc/support/R$color;->disabled_text_color:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_c
    :goto_8
    return-void
.end method
