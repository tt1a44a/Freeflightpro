.class public interface abstract Lcom/muvee/dsg/mmap/api/videoframegenerator/VerticesDataConstants;
.super Ljava/lang/Object;
.source "VerticesDataConstants.java"


# static fields
.field public static final TRIANGLE_VERTICES_DATA:[F

.field public static final TRIANGLE_VERTICES_DATA_ROTATE_180:[F

.field public static final TRIANGLE_VERTICES_DATA_ROTATE_270:[F

.field public static final TRIANGLE_VERTICES_DATA_ROTATE_90:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x14

    .line 5
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VerticesDataConstants;->TRIANGLE_VERTICES_DATA:[F

    .line 13
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VerticesDataConstants;->TRIANGLE_VERTICES_DATA_ROTATE_90:[F

    .line 21
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VerticesDataConstants;->TRIANGLE_VERTICES_DATA_ROTATE_180:[F

    .line 29
    new-array v0, v1, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/VerticesDataConstants;->TRIANGLE_VERTICES_DATA_ROTATE_270:[F

    return-void

    .line 5
    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 13
    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 21
    :array_2
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data

    .line 29
    :array_3
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
