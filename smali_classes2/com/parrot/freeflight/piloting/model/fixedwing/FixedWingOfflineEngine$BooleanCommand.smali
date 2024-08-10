.class abstract Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$BooleanCommand;
.super Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$CachedCommand;
.source "FixedWingOfflineEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BooleanCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$CachedCommand",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$BooleanCommand;->this$0:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;

    .line 172
    invoke-direct {p0, p2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$CachedCommand;-><init>(Ljava/lang/Object;)V

    .line 173
    return-void
.end method
