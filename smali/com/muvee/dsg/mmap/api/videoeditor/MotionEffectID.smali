.class public final enum Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;
.super Ljava/lang/Enum;
.source "MotionEffectID.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum E_MVVE_MOTION_EX_LINEAR:Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

.field public static final enum E_MVVE_MOTION_EX_NO_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

.field public static final enum E_MVVE_MOTION_EX_UNIFORM:Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

.field public static final enum E_MVVE_SLOW_MOTION_EX_CLIFF_SLOPE:Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

.field public static final enum E_MVVE_SLOW_MOTION_EX_CLIFF_SLOPE2:Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

.field public static final enum E_MVVE_SLOW_MOTION_EX_NOT_USED_1:Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

.field public static final enum E_MVVE_SLOW_MOTION_EX_NOT_USED_2:Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

.field public static final enum E_MVVE_SLOW_MOTION_EX_SLOPE_CLIFF:Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

.field public static final enum E_MVVE_SLOW_MOTION_EX_SLOPE_CLIFF2:Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

.field public static final enum E_MVVE_SLOW_MOTION_EX_U_SINK_HOLE:Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

.field public static final enum E_MVVE_SLOW_MOTION_EX_V_SINK:Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

.field public static final enum E_MVVE_SLOW_MOTION_EX_V_SINK2:Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

.field private static final synthetic a:[Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

    const-string v1, "E_MVVE_MOTION_EX_NO_EFFECT"

    invoke-direct {v0, v1, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;->E_MVVE_MOTION_EX_NO_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

    .line 18
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

    const-string v1, "E_MVVE_SLOW_MOTION_EX_CLIFF_SLOPE"

    invoke-direct {v0, v1, v4}, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;->E_MVVE_SLOW_MOTION_EX_CLIFF_SLOPE:Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

    .line 22
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

    const-string v1, "E_MVVE_SLOW_MOTION_EX_SLOPE_CLIFF"

    invoke-direct {v0, v1, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;->E_MVVE_SLOW_MOTION_EX_SLOPE_CLIFF:Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

    .line 26
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

    const-string v1, "E_MVVE_SLOW_MOTION_EX_U_SINK_HOLE"

    invoke-direct {v0, v1, v6}, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;->E_MVVE_SLOW_MOTION_EX_U_SINK_HOLE:Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

    .line 30
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

    const-string v1, "E_MVVE_SLOW_MOTION_EX_V_SINK"

    invoke-direct {v0, v1, v7}, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;->E_MVVE_SLOW_MOTION_EX_V_SINK:Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

    .line 34
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

    const-string v1, "E_MVVE_SLOW_MOTION_EX_V_SINK2"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;->E_MVVE_SLOW_MOTION_EX_V_SINK2:Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

    .line 38
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

    const-string v1, "E_MVVE_MOTION_EX_UNIFORM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;->E_MVVE_MOTION_EX_UNIFORM:Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

    .line 42
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

    const-string v1, "E_MVVE_MOTION_EX_LINEAR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;->E_MVVE_MOTION_EX_LINEAR:Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

    .line 46
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

    const-string v1, "E_MVVE_SLOW_MOTION_EX_SLOPE_CLIFF2"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;->E_MVVE_SLOW_MOTION_EX_SLOPE_CLIFF2:Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

    .line 50
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

    const-string v1, "E_MVVE_SLOW_MOTION_EX_CLIFF_SLOPE2"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;->E_MVVE_SLOW_MOTION_EX_CLIFF_SLOPE2:Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

    .line 54
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

    const-string v1, "E_MVVE_SLOW_MOTION_EX_NOT_USED_1"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;->E_MVVE_SLOW_MOTION_EX_NOT_USED_1:Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

    .line 58
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

    const-string v1, "E_MVVE_SLOW_MOTION_EX_NOT_USED_2"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;->E_MVVE_SLOW_MOTION_EX_NOT_USED_2:Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

    .line 9
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;->E_MVVE_MOTION_EX_NO_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

    aput-object v1, v0, v3

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;->E_MVVE_SLOW_MOTION_EX_CLIFF_SLOPE:Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

    aput-object v1, v0, v4

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;->E_MVVE_SLOW_MOTION_EX_SLOPE_CLIFF:Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

    aput-object v1, v0, v5

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;->E_MVVE_SLOW_MOTION_EX_U_SINK_HOLE:Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

    aput-object v1, v0, v6

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;->E_MVVE_SLOW_MOTION_EX_V_SINK:Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;->E_MVVE_SLOW_MOTION_EX_V_SINK2:Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;->E_MVVE_MOTION_EX_UNIFORM:Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;->E_MVVE_MOTION_EX_LINEAR:Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;->E_MVVE_SLOW_MOTION_EX_SLOPE_CLIFF2:Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;->E_MVVE_SLOW_MOTION_EX_CLIFF_SLOPE2:Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;->E_MVVE_SLOW_MOTION_EX_NOT_USED_1:Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;->E_MVVE_SLOW_MOTION_EX_NOT_USED_2:Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

    aput-object v2, v0, v1

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;->a:[Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

    return-object v0
.end method

.method public static values()[Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;->a:[Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

    invoke-virtual {v0}, [Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

    return-object v0
.end method
