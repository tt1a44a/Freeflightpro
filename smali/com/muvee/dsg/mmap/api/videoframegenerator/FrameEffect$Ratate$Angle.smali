.class public final enum Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;
.super Ljava/lang/Enum;
.source "FrameEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Angle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ROTATE_0:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;

.field public static final enum ROTATE_180:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;

.field public static final enum ROTATE_270:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;

.field public static final enum ROTATE_90:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;

.field private static final synthetic b:[Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;


# instance fields
.field a:[F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;

    const-string v1, "ROTATE_0"

    invoke-direct {v0, v1, v3}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;->ROTATE_0:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;

    .line 67
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;

    const-string v1, "ROTATE_90"

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoframegenerator/VerticesDataConstants;->TRIANGLE_VERTICES_DATA_ROTATE_90:[F

    invoke-direct {v0, v1, v4, v2}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;-><init>(Ljava/lang/String;I[F)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;->ROTATE_90:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;

    .line 68
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;

    const-string v1, "ROTATE_180"

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoframegenerator/VerticesDataConstants;->TRIANGLE_VERTICES_DATA_ROTATE_180:[F

    invoke-direct {v0, v1, v5, v2}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;-><init>(Ljava/lang/String;I[F)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;->ROTATE_180:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;

    .line 69
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;

    const-string v1, "ROTATE_270"

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoframegenerator/VerticesDataConstants;->TRIANGLE_VERTICES_DATA_ROTATE_270:[F

    invoke-direct {v0, v1, v6, v2}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;-><init>(Ljava/lang/String;I[F)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;->ROTATE_270:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;

    .line 65
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;->ROTATE_0:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;->ROTATE_90:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;

    aput-object v1, v0, v4

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;->ROTATE_180:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;

    aput-object v1, v0, v5

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;->ROTATE_270:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;

    aput-object v1, v0, v6

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;->b:[Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;

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
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I[F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput-object p3, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;->a:[F

    .line 75
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;

    return-object v0
.end method

.method public static values()[Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;->b:[Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;

    invoke-virtual {v0}, [Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameEffect$Ratate$Angle;

    return-object v0
.end method
