.class public abstract Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$CachedCommand;
.super Ljava/lang/Object;
.source "FixedWingOfflineEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CachedCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "this":Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$CachedCommand;, "Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$CachedCommand<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$CachedCommand;->mValue:Ljava/lang/Object;

    .line 150
    return-void
.end method


# virtual methods
.method public abstract execute()V
.end method
