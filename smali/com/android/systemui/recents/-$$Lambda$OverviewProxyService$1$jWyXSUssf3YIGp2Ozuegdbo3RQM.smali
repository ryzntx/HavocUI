.class public final synthetic Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$jWyXSUssf3YIGp2Ozuegdbo3RQM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$jWyXSUssf3YIGp2Ozuegdbo3RQM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$jWyXSUssf3YIGp2Ozuegdbo3RQM;

    invoke-direct {v0}, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$jWyXSUssf3YIGp2Ozuegdbo3RQM;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$jWyXSUssf3YIGp2Ozuegdbo3RQM;->INSTANCE:Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$jWyXSUssf3YIGp2Ozuegdbo3RQM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/stackdivider/Divider;

    invoke-static {p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$getNonMinimizedSplitScreenSecondaryBounds$6(Lcom/android/systemui/stackdivider/Divider;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method
