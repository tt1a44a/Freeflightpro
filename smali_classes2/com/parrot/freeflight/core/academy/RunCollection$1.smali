.class Lcom/parrot/freeflight/core/academy/RunCollection$1;
.super Ljava/lang/Object;
.source "RunCollection.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/academy/RunCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDateFormat:Ljava/text/SimpleDateFormat;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/parrot/freeflight/core/academy/RunCollection;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/RunCollection;)V
    .locals 3
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/academy/RunCollection;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/RunCollection$1;->this$0:Lcom/parrot/freeflight/core/academy/RunCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    .line 64
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection$1;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 63
    return-void
.end method


# virtual methods
.method public compare(Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;)I
    .locals 5
    .param p1, "lhs"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;
    .param p2, "rhs"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    .prologue
    .line 69
    :try_start_0
    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/RunCollection$1;->mDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 70
    .local v0, "date1":Ljava/util/Date;
    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/RunCollection$1;->mDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p2}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 71
    .local v1, "date2":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 75
    .end local v0    # "date1":Ljava/util/Date;
    .end local v1    # "date2":Ljava/util/Date;
    :goto_0
    return v3

    .line 72
    :catch_0
    move-exception v2

    .line 73
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    .line 75
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 62
    check-cast p1, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    check-cast p2, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/core/academy/RunCollection$1;->compare(Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;)I

    move-result v0

    return v0
.end method
