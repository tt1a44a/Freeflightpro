.class public Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;
.super Ljava/lang/Object;
.source "TranscodeParam.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack;,
        Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$SaveMode;
    }
.end annotation


# instance fields
.field public callBack:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack;

.field public jpgCompressionQuality:I

.field public onlyIFrame:Z

.field public outputFileFormat:Ljava/lang/String;

.field public outputHeight:I

.field public outputWidth:I

.field public saveMode:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$SaveMode;

.field public timeList:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public videoFile:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x100

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "/sdcard/testDecoder/V%d.bin"

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->outputFileFormat:Ljava/lang/String;

    .line 24
    iput v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->outputWidth:I

    .line 25
    iput v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->outputHeight:I

    .line 26
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$SaveMode;->BIMAP_BYTE:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$SaveMode;

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->saveMode:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$SaveMode;

    .line 27
    const/16 v0, 0x50

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->jpgCompressionQuality:I

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->onlyIFrame:Z

    return-void
.end method
