.class final Lcom/parrot/freeflight/purchase/util/InAppConstants$2;
.super Ljava/util/ArrayList;
.source "InAppConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/purchase/util/InAppConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 1

    .prologue
    .line 20
    .local p1, "arg0":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    const-string v0, "android.test.purchased"

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/purchase/util/InAppConstants$2;->add(Ljava/lang/Object;)Z

    .line 22
    return-void
.end method
