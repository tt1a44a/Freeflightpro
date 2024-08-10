.class abstract Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$b;
.super Ljava/lang/Object;
.source "AdvancedVideoEditor.java"

# interfaces
.implements Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$1;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$b;->a:Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$b;->a:Ljava/lang/Object;

    return-object v0
.end method
