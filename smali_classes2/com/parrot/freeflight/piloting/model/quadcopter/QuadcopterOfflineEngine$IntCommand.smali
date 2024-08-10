.class abstract Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$IntCommand;
.super Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$CachedCommand;
.source "QuadcopterOfflineEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "IntCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$CachedCommand",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/Integer;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$IntCommand;->this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;

    .line 189
    invoke-direct {p0, p2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$CachedCommand;-><init>(Ljava/lang/Object;)V

    .line 190
    return-void
.end method
