.class public final Lcom/parrot/freeflight/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static final APPLICATION_ID:Ljava/lang/String; = "com.parrot.freeflight3"

.field public static final BUILD_TYPE:Ljava/lang/String; = "release"

.field public static final COUNTRY_CODE:Ljava/lang/String;

.field public static final DEBUG:Z = false

.field public static final FLAVOR:Ljava/lang/String; = "ff4Row"

.field public static final FLAVOR_declination:Ljava/lang/String; = "row"

.field public static final FLAVOR_version:Ljava/lang/String; = "ff4"

.field public static final FLIGHT_DIRECTOR_AVAILABLE:Z = true

.field public static final FLIGHT_PLAN_AVAILABLE:Z = true

.field public static final FOLLOW_ME_WITH_PROMO_CODE_ONLY:Z = false

.field public static final OBB_FILE_SIZE_IN_BYTES:I = 0x968b88c

.field public static final OBB_VERSION_CODE:I = 0x2fe15fa

.field public static final SHOULD_DOWNLOAD_OBB_FILE:Z = true

.field public static final SHOULD_PURCHASE_FLIGHT_DIRECTOR:Z = true

.field public static final SHOULD_PURCHASE_FLIGHT_PLAN:Z = true

.field public static final SHOULD_PURCHASE_FOLLOW_ME:Z = false

.field public static final SYNC_ACCOUNT_TYPE:Ljava/lang/String; = "com.parrot.freeflight3.release"

.field public static final THERMAL_AVAILABLE:Z = false

.field public static final VERSION_CODE:I = 0x2fe19e1

.field public static final VERSION_NAME:Ljava/lang/String; = "5.2.7"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/parrot/freeflight/BuildConfig;->COUNTRY_CODE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
