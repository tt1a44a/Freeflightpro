.class public interface abstract Lcom/muvee/dsg/mmap/api/videoeditor/pregen/VerticesDataConstants;
.super Ljava/lang/Object;
.source "VerticesDataConstants.java"


# static fields
.field public static final TRIANGLE_VERTICES_DATA:[F

.field public static final TRIANGLE_VERTICES_DATA_PORTAIL:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x14

    .line 5
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/VerticesDataConstants;->TRIANGLE_VERTICES_DATA:[F

    .line 33
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/VerticesDataConstants;->TRIANGLE_VERTICES_DATA_PORTAIL:[F

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

    .line 33
    :array_1
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
