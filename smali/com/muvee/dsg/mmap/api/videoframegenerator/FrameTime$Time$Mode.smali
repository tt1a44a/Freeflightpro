.class public final enum Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;
.super Ljava/lang/Enum;
.source "FrameTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CLOSEST:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;

.field public static final enum CLOSEST_SYNC:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;

.field public static final enum NEXT:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;

.field public static final enum NEXT_SYNC:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;

.field public static final enum PREVIOUS:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;

.field public static final enum PREVIOUS_SYNC:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;

.field private static final synthetic a:[Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;

    const-string v1, "CLOSEST"

    invoke-direct {v0, v1, v3}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;->CLOSEST:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;

    .line 57
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;

    const-string v1, "NEXT"

    invoke-direct {v0, v1, v4}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;->NEXT:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;

    .line 61
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;

    const-string v1, "PREVIOUS"

    invoke-direct {v0, v1, v5}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;->PREVIOUS:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;

    .line 65
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;

    const-string v1, "CLOSEST_SYNC"

    invoke-direct {v0, v1, v6}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;->CLOSEST_SYNC:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;

    .line 69
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;

    const-string v1, "NEXT_SYNC"

    invoke-direct {v0, v1, v7}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;->NEXT_SYNC:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;

    .line 73
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;

    const-string v1, "PREVIOUS_SYNC"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;->PREVIOUS_SYNC:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;

    .line 49
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;->CLOSEST:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;->NEXT:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;->PREVIOUS:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;->CLOSEST_SYNC:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;->NEXT_SYNC:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;->PREVIOUS_SYNC:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;->a:[Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;

    return-object v0
.end method

.method public static values()[Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;->a:[Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;

    invoke-virtual {v0}, [Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;

    return-object v0
.end method
