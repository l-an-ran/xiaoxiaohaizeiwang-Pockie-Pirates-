.class final Lcom/nd/commplatform/d/c/if$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/if;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/if;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/if;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/if$1;->a:Lcom/nd/commplatform/d/c/if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/if$1;->a:Lcom/nd/commplatform/d/c/if;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/if$1;->a:Lcom/nd/commplatform/d/c/if;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/if;->a(Lcom/nd/commplatform/d/c/if;)Lcom/nd/commplatform/entry/NdNewAppVersionInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/if;->a(Lcom/nd/commplatform/d/c/if;Lcom/nd/commplatform/entry/NdNewAppVersionInfo;)V

    return-void
.end method
