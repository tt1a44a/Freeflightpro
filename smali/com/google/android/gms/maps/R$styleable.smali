.class public final Lcom/google/android/gms/maps/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final MapAttrs:[I

.field public static final MapAttrs_ambientEnabled:I = 0x0

.field public static final MapAttrs_cameraBearing:I = 0x1

.field public static final MapAttrs_cameraMaxZoomPreference:I = 0x2

.field public static final MapAttrs_cameraMinZoomPreference:I = 0x3

.field public static final MapAttrs_cameraTargetLat:I = 0x4

.field public static final MapAttrs_cameraTargetLng:I = 0x5

.field public static final MapAttrs_cameraTilt:I = 0x6

.field public static final MapAttrs_cameraZoom:I = 0x7

.field public static final MapAttrs_latLngBoundsNorthEastLatitude:I = 0x8

.field public static final MapAttrs_latLngBoundsNorthEastLongitude:I = 0x9

.field public static final MapAttrs_latLngBoundsSouthWestLatitude:I = 0xa

.field public static final MapAttrs_latLngBoundsSouthWestLongitude:I = 0xb

.field public static final MapAttrs_liteMode:I = 0xc

.field public static final MapAttrs_mapType:I = 0xd

.field public static final MapAttrs_uiCompass:I = 0xe

.field public static final MapAttrs_uiMapToolbar:I = 0xf

.field public static final MapAttrs_uiRotateGestures:I = 0x10

.field public static final MapAttrs_uiScrollGestures:I = 0x11

.field public static final MapAttrs_uiScrollGesturesDuringRotateOrZoom:I = 0x12

.field public static final MapAttrs_uiTiltGestures:I = 0x13

.field public static final MapAttrs_uiZoomControls:I = 0x14

.field public static final MapAttrs_uiZoomGestures:I = 0x15

.field public static final MapAttrs_useViewLifecycle:I = 0x16

.field public static final MapAttrs_zOrderOnTop:I = 0x17


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/maps/R$styleable;->MapAttrs:[I

    return-void

    :array_0
    .array-data 4
        0x7f03002a
        0x7f030055
        0x7f030056
        0x7f030057
        0x7f030058
        0x7f030059
        0x7f03005a
        0x7f03005b
        0x7f0300e7
        0x7f0300e8
        0x7f0300e9
        0x7f0300ea
        0x7f030140
        0x7f030143
        0x7f0301ea
        0x7f0301eb
        0x7f0301ec
        0x7f0301ed
        0x7f0301ee
        0x7f0301ef
        0x7f0301f0
        0x7f0301f1
        0x7f0301f4
        0x7f030201
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
