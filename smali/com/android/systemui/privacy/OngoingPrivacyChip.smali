.class public final Lcom/android/systemui/privacy/OngoingPrivacyChip;
.super Landroid/widget/FrameLayout;
.source "OngoingPrivacyChip.kt"


# instance fields
.field private back:Landroid/widget/FrameLayout;

.field private final backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private final batteryInQs:Z

.field private builder:Lcom/android/systemui/privacy/PrivacyChipBuilder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private expanded:Z

.field private final iconColor:I

.field private final iconMarginCollapsed:I

.field private final iconMarginExpanded:I

.field private final iconSize:I

.field private iconsContainer:Landroid/widget/LinearLayout;

.field private final networkTrafficInSb:Z

.field private privacyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sidePadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/privacy/OngoingPrivacyChip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/privacy/OngoingPrivacyChip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/privacy/OngoingPrivacyChip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 35
    sget p3, Lcom/android/systemui/R$dimen;->ongoing_appops_chip_icon_margin_expanded:I

    .line 34
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->iconMarginExpanded:I

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 37
    sget p3, Lcom/android/systemui/R$dimen;->ongoing_appops_chip_icon_margin_collapsed:I

    .line 36
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->iconMarginCollapsed:I

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$dimen;->ongoing_appops_chip_icon_size:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->iconSize:I

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 41
    sget p3, Lcom/android/systemui/R$color;->status_bar_clock_color:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p4

    .line 40
    invoke-virtual {p2, p3, p4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->iconColor:I

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$dimen;->ongoing_appops_chip_side_padding:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->sidePadding:I

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$bool;->config_batteryInQSPanel:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->batteryInQs:Z

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "network_traffic_location"

    const/4 p4, 0x0

    invoke-static {p2, p3, p4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-nez p2, :cond_0

    const/4 p4, 0x1

    :cond_0
    iput-boolean p4, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->networkTrafficInSb:Z

    .line 48
    sget p2, Lcom/android/systemui/R$drawable;->privacy_chip_bg:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 59
    new-instance p2, Lcom/android/systemui/privacy/PrivacyChipBuilder;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/android/systemui/privacy/PrivacyChipBuilder;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p2, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->builder:Lcom/android/systemui/privacy/PrivacyChipBuilder;

    .line 60
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->privacyList:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    .line 31
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/privacy/OngoingPrivacyChip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static final synthetic access$getBatteryInQs$p(Lcom/android/systemui/privacy/OngoingPrivacyChip;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->batteryInQs:Z

    return p0
.end method

.method public static final synthetic access$getIconColor$p(Lcom/android/systemui/privacy/OngoingPrivacyChip;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->iconColor:I

    return p0
.end method

.method public static final synthetic access$getIconMarginCollapsed$p(Lcom/android/systemui/privacy/OngoingPrivacyChip;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->iconMarginCollapsed:I

    return p0
.end method

.method public static final synthetic access$getIconMarginExpanded$p(Lcom/android/systemui/privacy/OngoingPrivacyChip;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->iconMarginExpanded:I

    return p0
.end method

.method public static final synthetic access$getIconSize$p(Lcom/android/systemui/privacy/OngoingPrivacyChip;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->iconSize:I

    return p0
.end method

.method public static final synthetic access$getNetworkTrafficInSb$p(Lcom/android/systemui/privacy/OngoingPrivacyChip;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->networkTrafficInSb:Z

    return p0
.end method

.method private final generateContentDescription()V
    .locals 5

    .line 111
    iget-object v0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->builder:Lcom/android/systemui/privacy/PrivacyChipBuilder;

    invoke-virtual {v0}, Lcom/android/systemui/privacy/PrivacyChipBuilder;->joinTypes()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 113
    sget v2, Lcom/android/systemui/R$string;->ongoing_privacy_chip_content_multiple_apps:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 112
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final updateView()V
    .locals 5

    .line 76
    iget-object v0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->back:Landroid/widget/FrameLayout;

    const-string v1, "back"

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    iget-boolean v3, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->expanded:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->batteryInQs:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->networkTrafficInSb:Z

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 77
    iget-boolean v0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->expanded:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->batteryInQs:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->networkTrafficInSb:Z

    if-eqz v0, :cond_3

    :cond_2
    iget v0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->sidePadding:I

    goto :goto_1

    :cond_3
    move v0, v3

    .line 78
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->back:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_c

    invoke-virtual {v4, v0, v3, v0, v3}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    .line 79
    new-instance v0, Lcom/android/systemui/privacy/OngoingPrivacyChip$updateView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/privacy/OngoingPrivacyChip$updateView$1;-><init>(Lcom/android/systemui/privacy/OngoingPrivacyChip;)V

    .line 97
    iget-object v1, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->privacyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v3, "iconsContainer"

    if-nez v1, :cond_a

    .line 98
    invoke-direct {p0}, Lcom/android/systemui/privacy/OngoingPrivacyChip;->generateContentDescription()V

    .line 99
    iget-object v1, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->builder:Lcom/android/systemui/privacy/PrivacyChipBuilder;

    iget-object v4, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->iconsContainer:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_9

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/privacy/OngoingPrivacyChip$updateView$1;->invoke(Lcom/android/systemui/privacy/PrivacyChipBuilder;Landroid/view/ViewGroup;)V

    .line 100
    iget-object v0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->iconsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_7

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x10

    .line 102
    iget-boolean v4, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->expanded:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->batteryInQs:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->networkTrafficInSb:Z

    if-eqz v4, :cond_5

    :cond_4
    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    const v4, 0x800005

    :goto_2
    or-int/2addr v1, v4

    .line 101
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 103
    iget-object v1, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->iconsContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 100
    :cond_7
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 99
    :cond_9
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 105
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->iconsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 107
    :goto_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void

    .line 105
    :cond_b
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 78
    :cond_c
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 76
    :cond_d
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public final getBuilder()Lcom/android/systemui/privacy/PrivacyChipBuilder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 59
    iget-object p0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->builder:Lcom/android/systemui/privacy/PrivacyChipBuilder;

    return-object p0
.end method

.method public final getExpanded()Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->expanded:Z

    return p0
.end method

.method public final getPrivacyList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 60
    iget-object p0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->privacyList:Ljava/util/List;

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 68
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 70
    sget v0, Lcom/android/systemui/R$id;->background:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "requireViewById(R.id.background)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->back:Landroid/widget/FrameLayout;

    .line 71
    sget v0, Lcom/android/systemui/R$id;->icons_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "requireViewById(R.id.icons_container)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->iconsContainer:Landroid/widget/LinearLayout;

    return-void
.end method

.method public final setExpanded(Z)V
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->expanded:Z

    if-eq p1, v0, :cond_0

    .line 54
    iput-boolean p1, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->expanded:Z

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/privacy/OngoingPrivacyChip;->updateView()V

    :cond_0
    return-void
.end method

.method public final setPrivacyList(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyItem;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iput-object p1, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->privacyList:Ljava/util/List;

    .line 63
    new-instance v0, Lcom/android/systemui/privacy/PrivacyChipBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Lcom/android/systemui/privacy/PrivacyChipBuilder;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->builder:Lcom/android/systemui/privacy/PrivacyChipBuilder;

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/privacy/OngoingPrivacyChip;->updateView()V

    return-void
.end method
