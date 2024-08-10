.class public Lcom/parrot/freeflight/piloting/model/InterfaceSettingsModel;
.super Ljava/lang/Object;
.source "InterfaceSettingsModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/model/InterfaceSettingsModel$MapType;,
        Lcom/parrot/freeflight/piloting/model/InterfaceSettingsModel$MiniMapVisibility;
    }
.end annotation


# static fields
.field public static final DEFAULT_FRAMING_GRID_ENABLED:Z = false

.field public static final DEFAULT_HAND_LAUNCH_ENABLED:Z = false

.field public static final DEFAULT_MAP_TYPE:I = 0x2

.field public static final DEFAULT_MAP_VISIBILITY:I = 0x0

.field public static final MAP_SHOW_ALWAYS:I = 0x2

.field public static final MAP_SHOW_CONTROLLER:I = 0x1

.field public static final MAP_SHOW_NEVER:I = 0x0

.field public static final MAP_TYPE_HYBRID:I = 0x2

.field public static final MAP_TYPE_MAP:I = 0x0

.field public static final MAP_TYPE_SATELLITE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
