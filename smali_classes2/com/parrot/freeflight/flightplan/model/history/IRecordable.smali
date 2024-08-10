.class public interface abstract Lcom/parrot/freeflight/flightplan/model/history/IRecordable;
.super Ljava/lang/Object;
.source "IRecordable.java"


# virtual methods
.method public abstract merge(Lcom/parrot/freeflight/flightplan/model/history/IRecordable;)Lcom/parrot/freeflight/flightplan/model/history/IRecordable;
    .param p1    # Lcom/parrot/freeflight/flightplan/model/history/IRecordable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method public abstract redo()V
.end method

.method public abstract undo()V
.end method
