.class public final enum Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;
.super Ljava/lang/Enum;
.source "TimelineActionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;

.field public static final enum ACTION_LANDING:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;

.field public static final enum ACTION_PHOTO:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;

.field public static final enum ACTION_RECORD:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;

.field public static final enum ACTION_ROTATE:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;

.field public static final enum ACTION_TAKEOFF:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;

.field public static final enum ACTION_TILT:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;

.field public static final enum ACTION_WAIT:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;

    const-string v1, "ACTION_PHOTO"

    invoke-direct {v0, v1, v3}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;->ACTION_PHOTO:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;

    .line 5
    new-instance v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;

    const-string v1, "ACTION_RECORD"

    invoke-direct {v0, v1, v4}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;->ACTION_RECORD:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;

    .line 7
    new-instance v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;

    const-string v1, "ACTION_TAKEOFF"

    invoke-direct {v0, v1, v5}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;->ACTION_TAKEOFF:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;

    .line 8
    new-instance v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;

    const-string v1, "ACTION_LANDING"

    invoke-direct {v0, v1, v6}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;->ACTION_LANDING:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;

    .line 9
    new-instance v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;

    const-string v1, "ACTION_ROTATE"

    invoke-direct {v0, v1, v7}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;->ACTION_ROTATE:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;

    .line 10
    new-instance v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;

    const-string v1, "ACTION_WAIT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;->ACTION_WAIT:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;

    .line 12
    new-instance v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;

    const-string v1, "ACTION_TILT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;->ACTION_TILT:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;

    .line 3
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;

    sget-object v1, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;->ACTION_PHOTO:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;->ACTION_RECORD:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;->ACTION_TAKEOFF:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;->ACTION_LANDING:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;->ACTION_ROTATE:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;->ACTION_WAIT:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;->ACTION_TILT:Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;->$VALUES:[Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;

    return-object v0
.end method

.method public static values()[Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;->$VALUES:[Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;

    invoke-virtual {v0}, [Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/freeflight/flightplan/timeline/action/TimelineActionType;

    return-object v0
.end method
