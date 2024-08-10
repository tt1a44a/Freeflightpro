.class public interface abstract Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final CACHE_FRAME_HEIGHT:I = 0x2d0

.field public static final CACHE_FRAME_WIDTH:I = 0x2d0

.field public static final CURRENT_SAVE_MODE:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$SaveMode;

.field public static final US:J = 0xf4240L

.field public static final VIDEO_CACHE_FRAME_RATE:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$SaveMode;->JPG:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$SaveMode;

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Constants;->CURRENT_SAVE_MODE:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$SaveMode;

    return-void
.end method
