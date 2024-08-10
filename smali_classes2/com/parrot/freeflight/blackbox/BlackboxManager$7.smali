.class final Lcom/parrot/freeflight/blackbox/BlackboxManager$7;
.super Ljava/lang/Object;
.source "BlackboxManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/blackbox/BlackboxManager;->sortFilesByCreationDate([Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 8
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 258
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    move v0, v1

    .line 271
    .end local p1    # "o1":Ljava/lang/Object;
    .end local p2    # "o2":Ljava/lang/Object;
    :goto_0
    return v0

    .line 260
    .restart local p1    # "o1":Ljava/lang/Object;
    .restart local p2    # "o2":Ljava/lang/Object;
    :cond_0
    if-nez p1, :cond_1

    move v0, v2

    .line 261
    goto :goto_0

    .line 262
    :cond_1
    if-nez p2, :cond_2

    move v0, v3

    .line 263
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 266
    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    move-object v0, p2

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_3

    move v0, v3

    .line 267
    goto :goto_0

    .line 268
    :cond_3
    check-cast p1, Ljava/io/File;

    .end local p1    # "o1":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    check-cast p2, Ljava/io/File;

    .end local p2    # "o2":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gez v0, :cond_4

    move v0, v2

    .line 269
    goto :goto_0

    :cond_4
    move v0, v1

    .line 271
    goto :goto_0
.end method
