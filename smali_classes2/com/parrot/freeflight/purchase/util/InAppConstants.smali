.class public Lcom/parrot/freeflight/purchase/util/InAppConstants;
.super Ljava/lang/Object;
.source "InAppConstants.java"


# static fields
.field public static final ANDROID_STATIC_ID:Ljava/lang/String; = "android.test.purchased"

.field public static final FLIGHT_DIRECTOR_SKU:Ljava/lang/String; = "com.parrot.freeflight3.flightdirector"

.field public static final FLIGHT_PLAN_SKU:Ljava/lang/String; = "com.parrot.freeflight3.flightplan"

.field public static final FOLLOW_ME_SKU:Ljava/lang/String; = "com.parrot.freeflight3.followme"

.field public static final IN_APP_SKUS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final IN_APP_SKUS_DEBUG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATIC_IDS_PREFIX:Ljava/lang/String; = "android.test."


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lcom/parrot/freeflight/purchase/util/InAppConstants$1;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/purchase/util/InAppConstants$1;-><init>(I)V

    sput-object v0, Lcom/parrot/freeflight/purchase/util/InAppConstants;->IN_APP_SKUS:Ljava/util/List;

    .line 20
    new-instance v0, Lcom/parrot/freeflight/purchase/util/InAppConstants$2;

    sget-object v1, Lcom/parrot/freeflight/purchase/util/InAppConstants;->IN_APP_SKUS:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/purchase/util/InAppConstants$2;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/parrot/freeflight/purchase/util/InAppConstants;->IN_APP_SKUS_DEBUG:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
