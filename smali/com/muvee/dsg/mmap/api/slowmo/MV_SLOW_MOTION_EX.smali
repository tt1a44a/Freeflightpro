.class public final enum Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;
.super Ljava/lang/Enum;
.source "MV_SLOW_MOTION_EX.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum MV_SLOW_MOTION_EX_CLIFF_SLOPE:Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

.field public static final enum MV_SLOW_MOTION_EX_CLIFF_SLOPE2:Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

.field public static final enum MV_SLOW_MOTION_EX_LINEAR:Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

.field public static final enum MV_SLOW_MOTION_EX_NOT_USED_1:Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

.field public static final enum MV_SLOW_MOTION_EX_NO_EFFECT:Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

.field public static final enum MV_SLOW_MOTION_EX_SLOPE_CLIFF:Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

.field public static final enum MV_SLOW_MOTION_EX_SLOPE_CLIFF2:Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

.field public static final enum MV_SLOW_MOTION_EX_UNIFORM:Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

.field public static final enum MV_SLOW_MOTION_EX_U_SINK_HOLE:Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

.field public static final enum MV_SLOW_MOTION_EX_V_SINK:Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

.field public static final enum MV_SLOW_MOTION_EX_V_SINK2:Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

.field private static final synthetic a:[Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

    const-string v1, "MV_SLOW_MOTION_EX_NO_EFFECT"

    invoke-direct {v0, v1, v3}, Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;->MV_SLOW_MOTION_EX_NO_EFFECT:Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

    .line 16
    new-instance v0, Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

    const-string v1, "MV_SLOW_MOTION_EX_CLIFF_SLOPE"

    invoke-direct {v0, v1, v4}, Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;->MV_SLOW_MOTION_EX_CLIFF_SLOPE:Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

    .line 20
    new-instance v0, Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

    const-string v1, "MV_SLOW_MOTION_EX_SLOPE_CLIFF"

    invoke-direct {v0, v1, v5}, Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;->MV_SLOW_MOTION_EX_SLOPE_CLIFF:Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

    .line 24
    new-instance v0, Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

    const-string v1, "MV_SLOW_MOTION_EX_U_SINK_HOLE"

    invoke-direct {v0, v1, v6}, Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;->MV_SLOW_MOTION_EX_U_SINK_HOLE:Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

    .line 28
    new-instance v0, Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

    const-string v1, "MV_SLOW_MOTION_EX_V_SINK"

    invoke-direct {v0, v1, v7}, Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;->MV_SLOW_MOTION_EX_V_SINK:Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

    .line 32
    new-instance v0, Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

    const-string v1, "MV_SLOW_MOTION_EX_V_SINK2"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;->MV_SLOW_MOTION_EX_V_SINK2:Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

    .line 36
    new-instance v0, Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

    const-string v1, "MV_SLOW_MOTION_EX_UNIFORM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;->MV_SLOW_MOTION_EX_UNIFORM:Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

    .line 40
    new-instance v0, Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

    const-string v1, "MV_SLOW_MOTION_EX_LINEAR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;->MV_SLOW_MOTION_EX_LINEAR:Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

    .line 44
    new-instance v0, Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

    const-string v1, "MV_SLOW_MOTION_EX_SLOPE_CLIFF2"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;->MV_SLOW_MOTION_EX_SLOPE_CLIFF2:Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

    .line 48
    new-instance v0, Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

    const-string v1, "MV_SLOW_MOTION_EX_CLIFF_SLOPE2"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;->MV_SLOW_MOTION_EX_CLIFF_SLOPE2:Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

    .line 52
    new-instance v0, Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

    const-string v1, "MV_SLOW_MOTION_EX_NOT_USED_1"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;->MV_SLOW_MOTION_EX_NOT_USED_1:Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

    .line 8
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

    sget-object v1, Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;->MV_SLOW_MOTION_EX_NO_EFFECT:Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

    aput-object v1, v0, v3

    sget-object v1, Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;->MV_SLOW_MOTION_EX_CLIFF_SLOPE:Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

    aput-object v1, v0, v4

    sget-object v1, Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;->MV_SLOW_MOTION_EX_SLOPE_CLIFF:Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

    aput-object v1, v0, v5

    sget-object v1, Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;->MV_SLOW_MOTION_EX_U_SINK_HOLE:Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

    aput-object v1, v0, v6

    sget-object v1, Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;->MV_SLOW_MOTION_EX_V_SINK:Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;->MV_SLOW_MOTION_EX_V_SINK2:Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;->MV_SLOW_MOTION_EX_UNIFORM:Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;->MV_SLOW_MOTION_EX_LINEAR:Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;->MV_SLOW_MOTION_EX_SLOPE_CLIFF2:Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;->MV_SLOW_MOTION_EX_CLIFF_SLOPE2:Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;->MV_SLOW_MOTION_EX_NOT_USED_1:Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

    aput-object v2, v0, v1

    sput-object v0, Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;->a:[Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

    return-object v0
.end method

.method public static values()[Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;->a:[Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

    invoke-virtual {v0}, [Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/muvee/dsg/mmap/api/slowmo/MV_SLOW_MOTION_EX;

    return-object v0
.end method
