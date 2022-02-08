.class public final synthetic Lcom/android/systemui/tuner/-$$Lambda$StatusbarItemsActivity$VXg98mLOs9-zSVvn2ioPxd2j0HA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/tuner/-$$Lambda$StatusbarItemsActivity$VXg98mLOs9-zSVvn2ioPxd2j0HA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/tuner/-$$Lambda$StatusbarItemsActivity$VXg98mLOs9-zSVvn2ioPxd2j0HA;

    invoke-direct {v0}, Lcom/android/systemui/tuner/-$$Lambda$StatusbarItemsActivity$VXg98mLOs9-zSVvn2ioPxd2j0HA;-><init>()V

    sput-object v0, Lcom/android/systemui/tuner/-$$Lambda$StatusbarItemsActivity$VXg98mLOs9-zSVvn2ioPxd2j0HA;->INSTANCE:Lcom/android/systemui/tuner/-$$Lambda$StatusbarItemsActivity$VXg98mLOs9-zSVvn2ioPxd2j0HA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/fragments/FragmentService;

    invoke-static {p1}, Lcom/android/systemui/tuner/StatusbarItemsActivity;->lambda$onDestroy$0(Lcom/android/systemui/fragments/FragmentService;)V

    return-void
.end method
