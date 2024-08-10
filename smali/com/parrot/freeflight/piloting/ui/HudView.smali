.class public interface abstract Lcom/parrot/freeflight/piloting/ui/HudView;
.super Ljava/lang/Object;
.source "HudView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/ui/HudView$OnSettingsButtonClickListener;
    }
.end annotation


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract lowMemory()V
.end method

.method public abstract onBackPressed()Z
.end method

.method public abstract onSaveInstanceState(Landroid/os/Bundle;)V
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method

.method public abstract updateConnectionState(Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;)V
    .param p1    # Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract updatePosition(FF)V
.end method

.method public abstract updateView()V
.end method
