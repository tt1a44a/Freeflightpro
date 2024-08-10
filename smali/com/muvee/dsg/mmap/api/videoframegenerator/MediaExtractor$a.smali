.class abstract Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$a;
.super Ljava/lang/Object;
.source "MediaExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "a"
.end annotation


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Ljava/lang/String;

.field protected c:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$a;->a:Ljava/util/List;

    .line 47
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$a;->b:Ljava/lang/String;

    .line 48
    iput p2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$a;->c:I

    .line 49
    return-void
.end method


# virtual methods
.method public abstract a(JI)J
.end method

.method protected declared-synchronized b(JI)J
    .locals 9

    .prologue
    .line 55
    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$a;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$a;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 85
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 58
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$a;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$a;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 61
    :cond_1
    const/4 v0, 0x1

    move v4, v0

    move-wide v2, p1

    :goto_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_4

    .line 62
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$a;->a:Ljava/util/List;

    add-int/lit8 v1, v4, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 63
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor$a;->a:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 64
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v5, p1, v6

    if-ltz v5, :cond_3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v5, p1, v6

    if-gez v5, :cond_3

    .line 65
    packed-switch p3, :pswitch_data_0

    move-wide v0, v2

    .line 80
    goto :goto_0

    .line 67
    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 70
    :pswitch_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 73
    :pswitch_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, p1, v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    .line 74
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto/16 :goto_0

    .line 82
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 61
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    move-wide v0, v2

    goto/16 :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
