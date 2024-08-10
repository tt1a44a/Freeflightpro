.class final Lcom/parrot/freeflight/purchase/util/InAppConstants$1;
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
.method constructor <init>(I)V
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 14
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    const-string v0, "com.parrot.freeflight3.flightplan"

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/purchase/util/InAppConstants$1;->add(Ljava/lang/Object;)Z

    .line 16
    const-string v0, "com.parrot.freeflight3.followme"

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/purchase/util/InAppConstants$1;->add(Ljava/lang/Object;)Z

    .line 17
    const-string v0, "com.parrot.freeflight3.flightdirector"

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/purchase/util/InAppConstants$1;->add(Ljava/lang/Object;)Z

    .line 18
    return-void
.end method
