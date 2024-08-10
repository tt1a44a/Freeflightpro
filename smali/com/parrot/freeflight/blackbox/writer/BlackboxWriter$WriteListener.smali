.class public interface abstract Lcom/parrot/freeflight/blackbox/writer/BlackboxWriter$WriteListener;
.super Ljava/lang/Object;
.source "BlackboxWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/blackbox/writer/BlackboxWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WriteListener"
.end annotation


# virtual methods
.method public abstract onFileWritten(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
